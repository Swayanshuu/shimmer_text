<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

A customizable Flutter widget that adds a smooth shimmer effect to text.  
Perfect for headings, titles, or adding a premium animated look to your app’s UI.  
Supports custom colors, font, size, letter spacing, and animation duration.

## ✨ Features

- 🚀 Adds a smooth **shimmer animation** to any text
- 🎨 Fully **customizable**:
  - `text` → your string
  - `textSize` → default: `14`
  - `textColor` → default: `Colors.white`
  - `letterSpacing` → default: `1`
  - `textFamily` → choose your font
  - `shimmerColors` → pass your own gradient colors
  - `duration` → control animation speed
- 🎭 Works with **any font family**
- ⚡ Lightweight and easy to use
- 📱 Perfect for headings, titles, loading states, or premium effects

---

## 📸 Preview

(media/bBG.gif)
(media/wBG.gif)
(media/wSC.png)

## 🛠️ Getting started

### Prerequisites

- ✅ Flutter SDK installed (latest stable version recommended)
- ✅ A working Flutter project (`flutter create my_app`)

### Installation

Add this package to your `pubspec.yaml`:

````yaml
dependencies:
  shimmer_text:
    shimmer_text: ^1.0.0 



## 🚀 Usage
Here’s a quick example:

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

- 💡 **More info**: This package is built for adding a simple yet powerful shimmer effect to text.
- 🤝 **Contributing**: Contributions are welcome! Feel free to open a PR if you’d like to add new features or fix bugs.
- 🐛 **Reporting issues**: Found a bug or want to request a feature? Please open an issue on [GitHub Issues](https://github.com/Swayanshuu/shimmer_text.git/issues).
- 📬 **Support**: You can reach out to the maintainer by opening issues, discussions, or contacting via GitHub profile.
- 🔮 **Future plans**: Upcoming improvements may include shimmer directions, multiple gradients, and built-in presets.
