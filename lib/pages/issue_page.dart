import 'package:flutter/material.dart';

class IssuePage extends StatelessWidget {
  final String title;
  const IssuePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.sentiment_satisfied_alt, size: 80, color: Colors.tealAccent),
              const SizedBox(height: 20),
              Text(
                'Support resources for "$title" coming soon.',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}