// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'KidToon';

  @override
  String get seoSubtitle => '¡Conviértete en dibujo animado y aprende sobre el mundo!';

  @override
  String get splashWelcome => '¡Bienvenido a KidToon!';

  @override
  String get makeCartoon => '¡Hagamos un dibujo animado! ⭐️';

  @override
  String get todaysLessons => 'Lecciones de hoy:';

  @override
  String get addPhoto => 'Agrega tu foto o captura de pantalla';

  @override
  String get takePhoto => 'Tomar foto';

  @override
  String get uploadImage => 'Subir imagen';

  @override
  String get wowLook => '¡Guau! ¡Te ves increíble!';

  @override
  String get next => 'Siguiente ➡️';

  @override
  String get chooseLesson => '¿Qué quieres aprender hoy?';

  @override
  String get buildStory => '¡Crea tu historia animada!';

  @override
  String get chooseBackground => 'Elige un fondo:';

  @override
  String get addProps => 'Agrega accesorios:';

  @override
  String get addFriends => 'Agrega amigos:';

  @override
  String get scenePreview => '[Vista previa de la escena: ¡Dibujo animado con tu cara!]';

  @override
  String get watchCartoon => '¡Mira tu dibujo animado! ¿Qué aprendiste?';

  @override
  String get playAgain => 'Jugar de nuevo';

  @override
  String get rewards => '¡Aquí están tus pegatinas y medallas!';

  @override
  String get stickerBook => 'Álbum de pegatinas';

  @override
  String get shareWithFamily => 'Compartir con la familia';

  @override
  String get makeAnother => 'Hacer otro dibujo animado';

  @override
  String get parentalGateTitle => 'Control parental';

  @override
  String parentalGatePrompt(Object a, Object b) {
    return '¡Solo para adultos! ¿Cuánto es $a + $b?';
  }

  @override
  String get parentalGateSubmit => 'Enviar';

  @override
  String get parentalGateCancel => 'Cancelar';
}
