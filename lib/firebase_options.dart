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
    apiKey: 'AIzaSyD8kralJn7cNETzg_nPdslxaJvyNyFTKGE',
    appId: '1:155682975924:web:41cf9c8b271d3ec12a67e1',
    messagingSenderId: '155682975924',
    projectId: 'moblie-eea18',
    authDomain: 'moblie-eea18.firebaseapp.com',
    storageBucket: 'moblie-eea18.firebasestorage.app',
    measurementId: 'G-E3KRXDY40X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPQBhP7n5K2sU_PGrqSrhTITEJiaLTFpA',
    appId: '1:155682975924:android:60bd0884426e48e52a67e1',
    messagingSenderId: '155682975924',
    projectId: 'moblie-eea18',
    storageBucket: 'moblie-eea18.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDMrf8UjzrLisHIx3gemh5Hj8Q3j7r0LAw',
    appId: '1:155682975924:ios:5b6c21c08ad2fdbb2a67e1',
    messagingSenderId: '155682975924',
    projectId: 'moblie-eea18',
    storageBucket: 'moblie-eea18.firebasestorage.app',
    iosBundleId: 'com.flutterthailand.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDMrf8UjzrLisHIx3gemh5Hj8Q3j7r0LAw',
    appId: '1:155682975924:ios:5b6c21c08ad2fdbb2a67e1',
    messagingSenderId: '155682975924',
    projectId: 'moblie-eea18',
    storageBucket: 'moblie-eea18.firebasestorage.app',
    iosBundleId: 'com.flutterthailand.flutterApplication1',
  );
}
