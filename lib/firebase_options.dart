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
    apiKey: 'AIzaSyB0mZ9imgX5xZOQirdH6e9vdHgs-PApGmg',
    appId: '1:22068131326:web:79afb6384441d8ed31fcaf',
    messagingSenderId: '22068131326',
    projectId: 'componentes5c-8c7dc',
    authDomain: 'componentes5c-8c7dc.firebaseapp.com',
    storageBucket: 'componentes5c-8c7dc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBUFBFhkx0WstR4G9W9trZCtAcLgH-BK4o',
    appId: '1:22068131326:android:91c1b35d7a0781b831fcaf',
    messagingSenderId: '22068131326',
    projectId: 'componentes5c-8c7dc',
    storageBucket: 'componentes5c-8c7dc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCa_T_w80J6zXUesGEHbYJQiuf2-e3JhSc',
    appId: '1:22068131326:ios:c2b21f5c4aefa5cf31fcaf',
    messagingSenderId: '22068131326',
    projectId: 'componentes5c-8c7dc',
    storageBucket: 'componentes5c-8c7dc.appspot.com',
    iosBundleId: 'com.example.practica3Componentes',
  );
}
