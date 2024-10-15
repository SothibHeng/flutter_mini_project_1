import 'package:daily_app/ui/screens/sign_in/sign_in.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../core/widgets/app_bar.dart';
import '../../../core/widgets/search.dart';
import '../../../data/models/post_model.dart';
import '../../widgets/card.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  static const String apiUrl = 'https://blog-api.automatex.dev/blogs';

  Future<BlogResponse> fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return BlogResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load blogs');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Daily',
        actions: [
          TextButton(
            onPressed: () {
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
              if (kDebugMode) {
                print('The menu icon was clicked!');
              }
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey[50],
      body: FutureBuilder<BlogResponse>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.blogs.isEmpty) {
            return Center(child: Text('No data found'));
          } else {
            final blogs = snapshot.data!.blogs;
            return ListView(
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
                for (var blog in blogs)
                  PostCard(
                    username: blog.author.username,
                    title: blog.title,
                    description: blog.content,
                    thumbnail: blog.thumbnail,
                    likes: blog.numberOfLikes,
                    comments: blog.numberOfBookmarks,
                  ),
              ],
            );
          }
        },
      ),
    );
  }
}
