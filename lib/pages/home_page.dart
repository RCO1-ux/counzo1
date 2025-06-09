import 'package:flutter/material.dart';
import 'chat_page.dart';
import 'journal_page.dart';
import 'consult_page.dart';
import 'issue_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> buttons = [
      {'label': 'Exam Fear', 'icon': Icons.school, 'page': const IssuePage(title: 'Exam Fear')},
      {'label': 'Loneliness', 'icon': Icons.person_outline, 'page': const IssuePage(title: 'Loneliness')},
      {'label': 'Career Doubts', 'icon': Icons.work_outline, 'page': const IssuePage(title: 'Career Doubts')},
      {'label': 'JK Bro (AI Chat)', 'icon': Icons.chat, 'page': const ChatPage()},
      {'label': 'My Journal', 'icon': Icons.book, 'page': const JournalPage()},
      {'label': 'Consult a Professional', 'icon': Icons.medical_services, 'page': const ConsultPage()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('COUNZO'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: buttons.map((btn) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal.shade300.withAlpha(77), // 77 = 30% of 255,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              padding: const EdgeInsets.all(16),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => btn['page']),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(btn['icon'], size: 40, color: Colors.white),
                const SizedBox(height: 10),
                Text(btn['label'], textAlign: TextAlign.center),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
