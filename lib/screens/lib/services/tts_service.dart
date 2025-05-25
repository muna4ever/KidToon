import 'package:flutter_tts/flutter_tts.dart';

class TTSService {
  static final FlutterTts _tts = FlutterTts();

  Future<void> speak(String text, [String? lang]) async {
    await _tts.setLanguage(lang ?? "en-US");
    await _tts.setSpeechRate(0.5);
    await _tts.speak(text);
  }

  void stop() {
    _tts.stop();
  }
}
