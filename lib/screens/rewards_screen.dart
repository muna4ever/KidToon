import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../services/tts_service.dart';

class RewardsScreen extends StatelessWidget {
  final List<String> stickers = [
    'Scientist Star',
    'Artist Badge',
    'Teamwork Hero',
    'Doctor Sticker'
  ];
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    TTSService().speak(loc.rewards);
    return Scaffold(
      appBar: AppBar(title: Text(loc.rewards)),
      backgroundColor: Colors.purple[50],
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(loc.stickerBook, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(20),
              children: stickers.map((sticker) {
                return Card(
                  color: Colors.amber[100],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: 4,
                  child: Center(
                    child: Text(sticker, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.share),
                  label: Text(loc.shareWithFamily),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  ),
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                  child: Text(loc.makeAnother),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
