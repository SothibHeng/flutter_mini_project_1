import 'package:daily_app/ui/screens/sign_in/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../../../core/widgets/app_bar.dart';
import '../../../core/widgets/search.dart';
import '../../widgets/card.dart';

void main() {
  runApp(const MaterialApp(
    home: DailyAppScreen(),
  ));
}

class DailyAppScreen extends StatelessWidget {
  const DailyAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Daily',
        actions: [
          // Sign In Text Button
          TextButton(
            onPressed: () {
              // Navigate to the SignInPage when pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignIn()),
              );
              if (kDebugMode) {
                print("Sign In pressed");
              }
            },
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              print('The menu icon was clicked!');
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey[50],
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        children: [
          CustomSearchBar(
            hintText: 'Search...',
            onChanged: (value) {
              if (kDebugMode) {
                print("Search input: $value");
              }
            },
          ),
          // Post Cards
          const PostCard(
            username: 'About Flutter',
            title: 'Using Flutter to Develop App',
            description: 'Creating an application with Flutter technology.',
            imageUrl: 'assets/images/flutter.png',
            likes: 99,
            comments: 6,
          ),
          const PostCard(
            username: 'Universe',
            title: 'Flutter Features',
            description: 'Getting started with Flutter for Beginners.',
            imageUrl: 'assets/images/flutter.png',
            likes: 150,
            comments: 10,
          ),
          const PostCard(
            username: 'Flutter Dev',
            title: 'Dart Null Safety',
            description: 'Why null safety is important in Flutter development.',
            imageUrl: 'assets/images/flutter.png',
            likes: 200,
            comments: 15,
          ),
        ],
      ),
    );
  }
}
