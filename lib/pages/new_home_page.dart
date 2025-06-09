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
      backgroundColor: const Color.fromARGB(255, 2, 20, 88),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/aiavatar.png'), // Ensure asset is added
            ),
            const SizedBox(height: 12),
            const Text(
              "Explore Counzo's Smart Tools",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "AI-powered relief for real-life emotions\nWith wellness assitant Aura by your side",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Color.fromARGB(136, 241, 220, 255)),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: buttons.map((btn) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => btn['page']),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal.shade300.withAlpha(51), // 51 = 20% of 255
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(btn['icon'], size: 36, color: const Color.fromARGB(255, 9, 1, 123)),
                            const SizedBox(height: 12),
                            Text(
                              btn['label'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
