import 'package:daily_app/ui/screens/sign_in/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../../../core/widgets/app_bar.dart';
import '../../../core/widgets/search.dart';
import '../../widgets/detail_card.dart';

void main() {
  runApp(const MaterialApp(
    home: Detail(),
  ));
}

class Detail extends StatelessWidget {
  const Detail({super.key});

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
          // Example Usage
          const CustomDetailCard(
            username: 'About Flutter',
            timeAgo: '2h ago',
            title: 'Using Flutter to Develop App',
            description: 'Creating an application with Flutter technology.',
            imageUrl: 'assets/images/flutter.png',
            likes: 99,
            comments: 6,
            shares: 20,
          ),
          // Example Usage
          const CustomDetailCard(
            username: 'About Flutter',
            timeAgo: '2h ago',
            title: 'Using Flutter to Develop App',
            description: 'Creating an application with Flutter technology.',
            imageUrl: 'assets/images/flutter.png',
            likes: 99,
            comments: 6,
            shares: 20,
          ),
          // Example Usage
          const CustomDetailCard(
            username: 'About Flutter',
            timeAgo: '2h ago',
            title: 'Using Flutter to Develop App',
            description: 'Creating an application with Flutter technology.',
            imageUrl: 'assets/images/flutter.png',
            likes: 99,
            comments: 6,
            shares: 20,
          ),
        ],
      ),
    );
  }
}
