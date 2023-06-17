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
    apiKey: 'AIzaSyC8s81ZZQZfmZW0QGj8p6h2i6u0X8kSouo',
    appId: '1:934855003053:web:7414b727a89bee84962f24',
    messagingSenderId: '934855003053',
    projectId: 'flutterapp-274cc',
    authDomain: 'flutterapp-274cc.firebaseapp.com',
    storageBucket: 'flutterapp-274cc.appspot.com',
    measurementId: 'G-YKP1GNNBDW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDF0Hg6W_f5H_nnYVU2SxlX-vHCr8zX0jA',
    appId: '1:934855003053:android:67c72bb68bfe1bc1962f24',
    messagingSenderId: '934855003053',
    projectId: 'flutterapp-274cc',
    storageBucket: 'flutterapp-274cc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD23D4HHSB1uHbnxqk7HrvzlqXz6zHy31E',
    appId: '1:934855003053:ios:39113cd5a0c4a914962f24',
    messagingSenderId: '934855003053',
    projectId: 'flutterapp-274cc',
    storageBucket: 'flutterapp-274cc.appspot.com',
    iosClientId: '934855003053-cmh22d8dk0f3nl485iquc285s2qdsjc9.apps.googleusercontent.com',
    iosBundleId: 'com.earayad.dashboardApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD23D4HHSB1uHbnxqk7HrvzlqXz6zHy31E',
    appId: '1:934855003053:ios:63382198e2f96fc4962f24',
    messagingSenderId: '934855003053',
    projectId: 'flutterapp-274cc',
    storageBucket: 'flutterapp-274cc.appspot.com',
    iosClientId: '934855003053-19ma73rvoiuq7finfnpga4vgdak6ipns.apps.googleusercontent.com',
    iosBundleId: 'com.example.dashboardApp',
  );
}
