import 'package:flutter/material.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Journal')),
      body: const Center(child: Text('Journal Feature Coming Soon', style: TextStyle(fontSize: 18))),
    );
  }
}