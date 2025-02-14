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
    apiKey: 'AIzaSyAn23PzzFOrhEMvkROmFMey-bMiWuJD08o',
    appId: '1:224536856597:web:cca6b90f1a727629d3661c',
    messagingSenderId: '224536856597',
    projectId: 'loginmvvm-7ef6e',
    authDomain: 'loginmvvm-7ef6e.firebaseapp.com',
    storageBucket: 'loginmvvm-7ef6e.firebasestorage.app',
    measurementId: 'G-Q3QXV83M2J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmgjvhr0tDHr_NmRkGgSOG2r3yXCUFgCY',
    appId: '1:224536856597:android:bcdbfc5e868f8450d3661c',
    messagingSenderId: '224536856597',
    projectId: 'loginmvvm-7ef6e',
    storageBucket: 'loginmvvm-7ef6e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7pqIBJUWK_g4foTixsSlZ8BEhkVgOdDs',
    appId: '1:224536856597:ios:148fa845574399bfd3661c',
    messagingSenderId: '224536856597',
    projectId: 'loginmvvm-7ef6e',
    storageBucket: 'loginmvvm-7ef6e.firebasestorage.app',
    iosBundleId: 'com.example.app',
  );
}
