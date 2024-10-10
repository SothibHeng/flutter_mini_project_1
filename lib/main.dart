import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Daily Application',
      home: Home(),
    )
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daily Application',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: const Center(
        child: Text(
          'Learn Flutter',
        ),
      ),
    );
  }
}
