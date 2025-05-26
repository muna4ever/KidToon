import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../services/tts_service.dart';

class VideoPlaybackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    TTSService().speak(loc.watchCartoon);
    return Scaffold(
      appBar: AppBar(title: Text(loc.watchCartoon)),
      backgroundColor: Colors.yellow[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black12,
              height: 220,
              width: 320,
              child: Center(
                child: Text('[Full-screen animated cartoon video]', style: TextStyle(fontSize: 18, color: Colors.grey[700])),
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow),
                  label: Text(loc.playAgain),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/rewards');
                  },
                  child: Text(loc.next, style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
            SizedBox(height: 36),
            Text(
              loc.watchCartoon,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
