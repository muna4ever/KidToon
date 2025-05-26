import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../services/tts_service.dart';

class LessonSelectionScreen extends StatelessWidget {
  final List<Map<String, dynamic>> lessons = [
    {'title': 'Doctor', 'icon': Icons.medical_services},
    {'title': 'Scientist', 'icon': Icons.science},
    {'title': 'Artist', 'icon': Icons.brush},
    {'title': 'Teamwork', 'icon': Icons.people},
    {'title': 'ABC', 'icon': Icons.abc},
    {'title': 'Numbers', 'icon': Icons.looks_one},
    {'title': 'Firefighter', 'icon': Icons.local_fire_department},
    {'title': 'Surprise!', 'icon': Icons.casino},
  ];

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    TTSService().speak(loc.chooseLesson);
    return Scaffold(
      appBar: AppBar(title: Text(loc.chooseLesson)),
      backgroundColor: Colors.green[50],
      body: Column(
        children: [
          SizedBox(height: 16),
          Text(loc.chooseLesson, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(18),
              children: lessons.map((lesson) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/compose');
                  },
                  child: Card(
                    color: Colors.amber[100],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 4,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(lesson['icon'], size: 46, color: Colors.pinkAccent),
                          SizedBox(height: 12),
                          Text(lesson['title'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.symmetric(horizontal: 64, vertical: 16),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/compose');
              },
              child: Text(loc.next, style: TextStyle(fontSize: 22)),
            ),
          ),
        ],
      ),
    );
  }
}
