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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBlKFHCs_1RsOzkn4Qe0XkBi-bGvItOUnw',
    appId: '1:919981410853:web:3586cc5598c6ffaec34dcc',
    messagingSenderId: '919981410853',
    projectId: 'neru-task',
    authDomain: 'neru-task.firebaseapp.com',
    storageBucket: 'neru-task.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBE13JnYiNtnpszVBiKNJ16kXVZR9V5TME',
    appId: '1:919981410853:android:aad481914b15eefcc34dcc',
    messagingSenderId: '919981410853',
    projectId: 'neru-task',
    storageBucket: 'neru-task.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsGr3JE5pkfMHvxk1ifCy0Ye6l0zD7DYw',
    appId: '1:919981410853:ios:25145acd3cc056ebc34dcc',
    messagingSenderId: '919981410853',
    projectId: 'neru-task',
    storageBucket: 'neru-task.appspot.com',
    iosBundleId: 'com.example.neruAssignment',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsGr3JE5pkfMHvxk1ifCy0Ye6l0zD7DYw',
    appId: '1:919981410853:ios:25145acd3cc056ebc34dcc',
    messagingSenderId: '919981410853',
    projectId: 'neru-task',
    storageBucket: 'neru-task.appspot.com',
    iosBundleId: 'com.example.neruAssignment',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBlKFHCs_1RsOzkn4Qe0XkBi-bGvItOUnw',
    appId: '1:919981410853:web:acda86f6c46876a8c34dcc',
    messagingSenderId: '919981410853',
    projectId: 'neru-task',
    authDomain: 'neru-task.firebaseapp.com',
    storageBucket: 'neru-task.appspot.com',
  );
}
