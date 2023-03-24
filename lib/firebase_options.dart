// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA4Pr-foqCD23e9YjhyFKgmWazQXPHYMzc',
    appId: '1:638570694656:web:17f9829a3ba10840e6b0e5',
    messagingSenderId: '638570694656',
    projectId: 'practice-firebase-abdb0',
    authDomain: 'practice-firebase-abdb0.firebaseapp.com',
    storageBucket: 'practice-firebase-abdb0.appspot.com',
    measurementId: 'G-JRS0VGBW56',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDoTmVXJcGp1l8OQhC_NEX8tgKfL7OAYNM',
    appId: '1:638570694656:android:ac77fb0b78b5268be6b0e5',
    messagingSenderId: '638570694656',
    projectId: 'practice-firebase-abdb0',
    storageBucket: 'practice-firebase-abdb0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_3NpmktIeUN5BuAKgZ-LUldEqwBfrIRk',
    appId: '1:638570694656:ios:f597e384e1be9ccbe6b0e5',
    messagingSenderId: '638570694656',
    projectId: 'practice-firebase-abdb0',
    storageBucket: 'practice-firebase-abdb0.appspot.com',
    androidClientId: '638570694656-aoqsmglephnjrb40l4ht4uckfeg3iv6r.apps.googleusercontent.com',
    iosClientId: '638570694656-hhb44spi49m123ggkc3k2f1shtl6nr8s.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_3NpmktIeUN5BuAKgZ-LUldEqwBfrIRk',
    appId: '1:638570694656:ios:f597e384e1be9ccbe6b0e5',
    messagingSenderId: '638570694656',
    projectId: 'practice-firebase-abdb0',
    storageBucket: 'practice-firebase-abdb0.appspot.com',
    androidClientId: '638570694656-aoqsmglephnjrb40l4ht4uckfeg3iv6r.apps.googleusercontent.com',
    iosClientId: '638570694656-hhb44spi49m123ggkc3k2f1shtl6nr8s.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceFirebase',
  );
}
