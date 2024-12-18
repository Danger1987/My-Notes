// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAF-Nb1nRRJQlJ90D3Wvos_atonLxvMYuQ',
    appId: '1:1036829545674:web:02a5ad33ec64e71e2d1033',
    messagingSenderId: '1036829545674',
    projectId: 'my-notes-danger',
    authDomain: 'my-notes-danger.firebaseapp.com',
    storageBucket: 'my-notes-danger.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArMZu1AcJYStCr6PUAtGkwvUY4MlDqfQU',
    appId: '1:1036829545674:android:bf75f5dc15647e212d1033',
    messagingSenderId: '1036829545674',
    projectId: 'my-notes-danger',
    storageBucket: 'my-notes-danger.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-ovvl1_n5qwbE92-sI20xZMwkVYB_udI',
    appId: '1:1036829545674:ios:ff55190a115965922d1033',
    messagingSenderId: '1036829545674',
    projectId: 'my-notes-danger',
    storageBucket: 'my-notes-danger.appspot.com',
    iosBundleId: 'com.example.myNotes',
  );
}
