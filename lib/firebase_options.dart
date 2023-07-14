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
    apiKey: 'AIzaSyCcA06nTeV9GqWZVuWWrquURRTZ1bTMwts',
    appId: '1:1001531760624:web:e37d602dbf9c3637fb8735',
    messagingSenderId: '1001531760624',
    projectId: 'muhendislik-tasarimi-88f23',
    authDomain: 'muhendislik-tasarimi-88f23.firebaseapp.com',
    storageBucket: 'muhendislik-tasarimi-88f23.appspot.com',
    measurementId: 'G-CT7PHSS9XX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVbvm_WH92XlW78Rad_TMcNKBQEyDt8yw',
    appId: '1:1001531760624:android:43c0b242ed9145b2fb8735',
    messagingSenderId: '1001531760624',
    projectId: 'muhendislik-tasarimi-88f23',
    storageBucket: 'muhendislik-tasarimi-88f23.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZwo0rwENFsrUFZIHkylre76PyWN6eg9E',
    appId: '1:1001531760624:ios:de51e86db0ef75b5fb8735',
    messagingSenderId: '1001531760624',
    projectId: 'muhendislik-tasarimi-88f23',
    storageBucket: 'muhendislik-tasarimi-88f23.appspot.com',
    iosClientId: '1001531760624-hg2e3rpi6rch8rque24odr41tut33hlu.apps.googleusercontent.com',
    iosBundleId: 'com.example.muhendislikTasarimi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDZwo0rwENFsrUFZIHkylre76PyWN6eg9E',
    appId: '1:1001531760624:ios:de51e86db0ef75b5fb8735',
    messagingSenderId: '1001531760624',
    projectId: 'muhendislik-tasarimi-88f23',
    storageBucket: 'muhendislik-tasarimi-88f23.appspot.com',
    iosClientId: '1001531760624-hg2e3rpi6rch8rque24odr41tut33hlu.apps.googleusercontent.com',
    iosBundleId: 'com.example.muhendislikTasarimi',
  );
}
