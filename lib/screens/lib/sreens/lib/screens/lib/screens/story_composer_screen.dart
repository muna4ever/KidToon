import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../services/tts_service.dart';

class StoryComposerScreen extends StatelessWidget {
  final List<String> backgrounds = ['Hospital', 'School', 'Lab'];
  final List<String> props = ['Stethoscope', 'Book', 'Microscope'];
  final List<String> friends = ['Nurse', 'Teacher', 'Pet'];

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    TTSService().speak(loc.buildStory);
    return Scaffold(
      appBar: AppBar(title: Text(loc.buildStory)),
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          SizedBox(height: 16),
          Text(loc.buildStory, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Text(loc.chooseBackground, style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: backgrounds.map((bg) => BackgroundCard(title: bg)).toList(),
            ),
          ),
          SizedBox(height: 10),
          Text(loc.addProps, style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: props.map((prop) => PropCard(title: prop)).toList(),
            ),
          ),
          SizedBox(height: 10),
          Text(loc.addFriends, style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: friends.map((f) => FriendCard(title: f)).toList(),
            ),
          ),
          SizedBox(height: 24),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 28),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.amber, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  loc.scenePreview,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(horizontal: 56, vertical: 16),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/video');
            },
            child: Text(loc.next, style: TextStyle(fontSize: 22)),
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}

class BackgroundCard extends StatelessWidget {
  final String title;
  const BackgroundCard({required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class PropCard extends StatelessWidget {
  final String title;
  const PropCard({required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class FriendCard extends StatelessWidget {
  final String title;
  const FriendCard({required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
