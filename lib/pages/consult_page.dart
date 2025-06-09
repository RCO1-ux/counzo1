import 'package:flutter/material.dart';

class ConsultPage extends StatelessWidget {
  const ConsultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Free Consultation')),
      body: const Center(child: Text('NGO Volunteer/Doctor Consultation Soon', style: TextStyle(fontSize: 18))),
    );
  }
}