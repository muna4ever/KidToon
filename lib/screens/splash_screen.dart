import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../services/tts_service.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    TTSService().speak(loc.splashWelcome);
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/mascots/mascot_wave.png', height: 120),
            ),
            Text(
              loc.splashWelcome,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.indigo),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                elevation: 8,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/upload');
              },
              child: Text(loc.makeCartoon, style: TextStyle(fontSize: 24)),
            ),
            SizedBox(height: 40),
            Text(loc.todaysLessons, style: TextStyle(fontSize: 18)),
            // Placeholder for horizontal list of lessons/icons
          ],
        ),
      ),
    );
  }
}
