import 'package:flutter/material.dart';

class Automatas extends StatelessWidget {
  const Automatas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nier 🥵'),
        backgroundColor: Colors.black38,
      ),
      body: Stack(
        children: [
          // Use Image.asset to display the image from assets
          Image.asset(
            'nier.webp', // Make sure the image path is correct and added in pubspec.yaml
            fit: BoxFit.cover, // Adjust the image fit
            width: double.infinity,
            height: double.infinity,
          ),
        ],
      ),
    );
  }
}
