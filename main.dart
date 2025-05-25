import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'screens/splash_screen.dart';
import 'screens/upload_screen.dart';
import 'screens/lesson_selection_screen.dart';
import 'screens/story_composer_screen.dart';
import 'screens/video_playback_screen.dart';
import 'screens/rewards_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(KidToonApp());
}

class KidToonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KidToon',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
        Locale('fr', ''),
        Locale('ar', ''),
        Locale('zh', ''),
        Locale('hi', ''),
        Locale('sw', ''),
      ],
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'Nunito',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/upload': (context) => UploadScreen(),
        '/lessons': (context) => LessonSelectionScreen(),
        '/compose': (context) => StoryComposerScreen(),
        '/video': (context) => VideoPlaybackScreen(),
        '/rewards': (context) => RewardsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
