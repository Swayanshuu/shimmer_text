import 'package:flutter/material.dart';

class ShimmerText extends StatefulWidget {
  const ShimmerText({
    super.key,
    required this.text,
    this.textSize = 14, // default size
    this.textFamily = '',
    this.textColor = Colors.white, // base color
    this.shiningColor = Colors.black, // highlight color
    this.duration = const Duration(seconds: 2), // shimmer speed
    this.letterspacing = 1, // default letterspacing
  });

  final String text;
  final double textSize;
  final Color textColor;
  final Color shiningColor;
  final String textFamily;
  final Duration duration;
  final double letterspacing;

  @override
  State<ShimmerText> createState() => _ShimmerTextState();
}

class _ShimmerTextState extends State<ShimmerText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> shimmerPosition;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat();

    shimmerPosition = Tween<double>(begin: -1.0, end: 2.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (rect) {
          return LinearGradient(
            begin: const Alignment(-1, -1), // top-left
            end: const Alignment(1, 1), // bottom-right
            colors: [
              widget.textColor,
              widget.shiningColor,
              widget.textColor, // 1st and 3rd always same
            ],
            stops: [
              shimmerPosition.value - 0.3,
              shimmerPosition.value,
              shimmerPosition.value + 0.3,
            ],
          ).createShader(rect);
        },
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.textSize,
            fontWeight: FontWeight.bold,
            fontFamily: widget.textFamily,
            letterSpacing: widget.letterspacing,
            // no need for color here, shader overrides it
          ),
        ),
      ),
    );
  }
}
