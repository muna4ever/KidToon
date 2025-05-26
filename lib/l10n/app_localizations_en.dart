// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'KidToon';

  @override
  String get seoSubtitle => 'Cartoon Yourself & Learn About the World!';

  @override
  String get splashWelcome => 'Welcome to KidToon!';

  @override
  String get makeCartoon => 'Let’s Make a Cartoon! ⭐️';

  @override
  String get todaysLessons => 'Today\'s Lessons:';

  @override
  String get addPhoto => 'Add your photo or screenshot';

  @override
  String get takePhoto => 'Take Photo';

  @override
  String get uploadImage => 'Upload Image';

  @override
  String get wowLook => 'Wow! You look amazing!';

  @override
  String get next => 'Next ➡️';

  @override
  String get chooseLesson => 'What do you want to learn today?';

  @override
  String get buildStory => 'Build your cartoon story!';

  @override
  String get chooseBackground => 'Choose a background:';

  @override
  String get addProps => 'Add props:';

  @override
  String get addFriends => 'Add friends:';

  @override
  String get scenePreview => '[Scene Preview: Cartoon with your face!]';

  @override
  String get watchCartoon => 'Watch your cartoon! What did you learn?';

  @override
  String get playAgain => 'Play Again';

  @override
  String get rewards => 'Here are your stickers and badges!';

  @override
  String get stickerBook => 'Sticker Book';

  @override
  String get shareWithFamily => 'Share with Family';

  @override
  String get makeAnother => 'Make Another Cartoon';

  @override
  String get parentalGateTitle => 'Parental Gate';

  @override
  String parentalGatePrompt(Object a, Object b) {
    return 'For grown-ups only! What is $a + $b?';
  }

  @override
  String get parentalGateSubmit => 'Submit';

  @override
  String get parentalGateCancel => 'Cancel';
}
