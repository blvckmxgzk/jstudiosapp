import 'package:flutter/material.dart';

void main() {
  // The runApp function takes the root widget of your application.
  runApp(const RedirectApp());
}

// 1. Main Application Widget
class RedirectApp extends StatelessWidget {
  const RedirectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The title from the HTML <title> tag
      title: 'Redirecting...', 
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Set the home widget to the actual UI screen
      home: const RedirectScreen(),
    );
  }
}

// 2. The UI Screen (Body Content)
class RedirectScreen extends StatelessWidget {
  const RedirectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // The Scaffold provides the basic structure (like the <body>)
    return Scaffold(
      body: Center(
        // Use a Column to stack the image and text vertically
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers content vertically
          children: <Widget>[
            // HTML: <img src="assets/IMG_0780.webp" class="logo" />
            Image.asset(
              'assets/IMG_0780.webp', // The path to the image
              // You would define a specific width/height here
              // corresponding to the 'logo' class styling.
              width: 150, 
              height: 150,
            ),
            const SizedBox(height: 20), // Provides vertical spacing
            // HTML: <p class="redirect-text">Redirecting...</p>
            const Text(
              'Redirecting...',
              style: TextStyle(
                // This corresponds to styling from the 'redirect-text' class
                fontSize: 24, 
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}