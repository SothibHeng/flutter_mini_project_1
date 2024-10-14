import 'package:daily_app/core/widgets/app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const MaterialApp(
    title: 'Splash Screen',
    home: SplashSreen(),
  ));
}

class SplashSreen extends StatelessWidget {
  const SplashSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Daily',
        actions: [
          // Sign In Text Button
          TextButton(
            onPressed: () {
              if (kDebugMode) {
                print("Sign In pressed");
              }
            },
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              print('The menu icon was clicked!');
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Daily',
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.blue[900]
        ),
        ),
      ),
    );
  }
}
