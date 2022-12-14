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
    apiKey: 'AIzaSyB7t9NrbLSLDQi7y1v6dGlURoyeT9BFP6I',
    appId: '1:162168244303:web:ffac981c94a9d1676cc23a',
    messagingSenderId: '162168244303',
    projectId: 'simpleed-8a482',
    authDomain: 'simpleed-8a482.firebaseapp.com',
    storageBucket: 'simpleed-8a482.appspot.com',
    measurementId: 'G-RMNSWHMHXZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMifXQ9IrmX4iRZ1BJ4tVOcHy-HuwzHkQ',
    appId: '1:162168244303:android:b97ef6663b363b0c6cc23a',
    messagingSenderId: '162168244303',
    projectId: 'simpleed-8a482',
    storageBucket: 'simpleed-8a482.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCiFu638B4gRROTHHXx3fNJY-bMuQv6yrI',
    appId: '1:162168244303:ios:945ddbaa09c1c4566cc23a',
    messagingSenderId: '162168244303',
    projectId: 'simpleed-8a482',
    storageBucket: 'simpleed-8a482.appspot.com',
    iosClientId: '162168244303-a98c55kagc2u460pieod9n89opju73jr.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCiFu638B4gRROTHHXx3fNJY-bMuQv6yrI',
    appId: '1:162168244303:ios:945ddbaa09c1c4566cc23a',
    messagingSenderId: '162168244303',
    projectId: 'simpleed-8a482',
    storageBucket: 'simpleed-8a482.appspot.com',
    iosClientId: '162168244303-a98c55kagc2u460pieod9n89opju73jr.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled',
  );
}
