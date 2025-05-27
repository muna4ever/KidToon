import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'KidToon'**
  String get appTitle;

  /// No description provided for @seoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Cartoon Yourself & Learn About the World!'**
  String get seoSubtitle;

  /// No description provided for @splashWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to KidToon!'**
  String get splashWelcome;

  /// No description provided for @makeCartoon.
  ///
  /// In en, this message translates to:
  /// **'Let’s Make a Cartoon! ⭐️'**
  String get makeCartoon;

  /// No description provided for @todaysLessons.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Lessons:'**
  String get todaysLessons;

  /// No description provided for @addPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add your photo or screenshot'**
  String get addPhoto;

  /// No description provided for @takePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get takePhoto;

  /// No description provided for @uploadImage.
  ///
  /// In en, this message translates to:
  /// **'Upload Image'**
  String get uploadImage;

  /// No description provided for @wowLook.
  ///
  /// In en, this message translates to:
  /// **'Wow! You look amazing!'**
  String get wowLook;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next ➡️'**
  String get next;

  /// No description provided for @chooseLesson.
  ///
  /// In en, this message translates to:
  /// **'What do you want to learn today?'**
  String get chooseLesson;

  /// No description provided for @buildStory.
  ///
  /// In en, this message translates to:
  /// **'Build your cartoon story!'**
  String get buildStory;

  /// No description provided for @chooseBackground.
  ///
  /// In en, this message translates to:
  /// **'Choose a background:'**
  String get chooseBackground;

  /// No description provided for @addProps.
  ///
  /// In en, this message translates to:
  /// **'Add props:'**
  String get addProps;

  /// No description provided for @addFriends.
  ///
  /// In en, this message translates to:
  /// **'Add friends:'**
  String get addFriends;

  /// No description provided for @scenePreview.
  ///
  /// In en, this message translates to:
  /// **'[Scene Preview: Cartoon with your face!]'**
  String get scenePreview;

  /// No description provided for @watchCartoon.
  ///
  /// In en, this message translates to:
  /// **'Watch your cartoon! What did you learn?'**
  String get watchCartoon;

  /// No description provided for @playAgain.
  ///
  /// In en, this message translates to:
  /// **'Play Again'**
  String get playAgain;

  /// No description provided for @rewards.
  ///
  /// In en, this message translates to:
  /// **'Here are your stickers and badges!'**
  String get rewards;

  /// No description provided for @stickerBook.
  ///
  /// In en, this message translates to:
  /// **'Sticker Book'**
  String get stickerBook;

  /// No description provided for @shareWithFamily.
  ///
  /// In en, this message translates to:
  /// **'Share with Family'**
  String get shareWithFamily;

  /// No description provided for @makeAnother.
  ///
  /// In en, this message translates to:
  /// **'Make Another Cartoon'**
  String get makeAnother;

  /// No description provided for @parentalGateTitle.
  ///
  /// In en, this message translates to:
  /// **'Parental Gate'**
  String get parentalGateTitle;

  /// No description provided for @parentalGatePrompt.
  ///
  /// In en, this message translates to:
  /// **'For grown-ups only! What is {a} + {b}?'**
  String parentalGatePrompt(Object a, Object b);

  /// No description provided for @parentalGateSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get parentalGateSubmit;

  /// No description provided for @parentalGateCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get parentalGateCancel;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
