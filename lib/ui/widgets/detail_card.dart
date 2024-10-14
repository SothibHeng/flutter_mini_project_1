import 'package:flutter/material.dart';

class CustomDetailCard extends StatelessWidget {
  final String username;
  final String timeAgo;
  final String title;
  final String description;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;

  const CustomDetailCard({
    super.key,
    required this.username,
    required this.timeAgo,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: Colors.grey[100]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Text(username[0]),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      timeAgo,
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: 180,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 10),
            // Post Title
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 5),
            // Card Description
            Text(
              description,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/love.png',
                        width: 23,
                        height: 23,
                      ),
                    ),
                    Text(
                      likes.toString(),
                      style: const TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/share.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                    Text(
                      comments.toString(),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/favorite.png',
                    width: 21,
                    height: 21,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
