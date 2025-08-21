ShimmerText Flutter Package
A customizable Flutter widget that applies a smooth shimmer animation to your text—ideal for headings, titles, premium effects, or loading states. Enjoy extensive customization for colors, fonts, size, letter spacing, and animation duration.

## ✨ Features
🚀 Smooth shimmer animation for any text

🎨 Fully customizable:

text: display your string

textSize: set font size (default: 14)

textColor: set text color (default: Colors.white)

letterSpacing: set letter spacing (default: 1)

textFamily: choose any font

shimmerColors: define your gradient colors

duration: control shimmer speed

🎭 Compatible with all font families

⚡ Lightweight & simple integration

📱 Ideal for headings, premium UI, loading states, and more

## 📸 Preview
![ShimmerText Dark Mode](https://github.com/Swayanshuu/shimmer_text/blob/main/media/bBG.gif?raw=true)
![ShimmerText Light Mode](https://github.com/Swayanshuu/shimmer_text/blob/main/media/wBG.gif?raw=true)
![ShimmerText](https://github.com/Swayanshuu/shimmer_text/blob/main/media/wSC.png?raw=true)

## ## 🛠️ Getting started

### Prerequisites
✅ Flutter SDK (latest stable version recommended)

✅ A Flutter project (flutter create my_app)

Installation
Add the package to your pubspec.yaml:

text
dependencies:
  shimmer_text: ^1.0.0
Run flutter pub get to install.

### 🚀 Usage

Quick example:

dart
import 'package:flutter/material.dart';
import 'package:shimmer_text/shimmer_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: const Center(
          child: ShimmerText(
            text: "Hello User!",
            textSize: 32,
            textColor: Colors.white,
            shiningColor: Colors.blue,
            letterSpacing: 2,
            duration: Duration(seconds: 3),
          ),
        ),
      ),
    );
  }
}


## 📢 Additional Information
💡 Purpose: Add a simple, visually appealing shimmer effect to any text.

🤝 Contributions: PRs are welcome! Add features or fix bugs.

🐛 Issues: Found a bug or want a new feature? Submit an issue.

📬 Support: Reach out through GitHub Issues or Discussions.

🔮 Future plans: Shimmer direction, multiple gradients, and built-in presets.

Enjoy a premium shimmer effect with full flexibility!