// File generated by FlutterFire CLI.
// ignore_for_file: type=lint

// 📦 Package imports:
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
    apiKey: 'AIzaSyAKy10fvn7xNHquvPOrO2CBvXzDK8xO82M',
    appId: '1:531978593093:web:8d874854495236331c142c',
    messagingSenderId: '531978593093',
    projectId: 'todo-chat-f70f5',
    authDomain: 'todo-chat-f70f5.firebaseapp.com',
    storageBucket: 'todo-chat-f70f5.appspot.com',
    measurementId: 'G-30XSJHKKBC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCo3sZoxnSEhkA1djYy6bQQqmCN2XXHEQg',
    appId: '1:531978593093:android:e5837b1830cacca31c142c',
    messagingSenderId: '531978593093',
    projectId: 'todo-chat-f70f5',
    storageBucket: 'todo-chat-f70f5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDu-nuwGZHMpqNAfVXWdkSREL9UBzmIEEo',
    appId: '1:531978593093:ios:7e6c5b59e66ac4bc1c142c',
    messagingSenderId: '531978593093',
    projectId: 'todo-chat-f70f5',
    storageBucket: 'todo-chat-f70f5.appspot.com',
    iosBundleId: 'com.me.todoChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDu-nuwGZHMpqNAfVXWdkSREL9UBzmIEEo',
    appId: '1:531978593093:ios:7e6c5b59e66ac4bc1c142c',
    messagingSenderId: '531978593093',
    projectId: 'todo-chat-f70f5',
    storageBucket: 'todo-chat-f70f5.appspot.com',
    iosBundleId: 'com.me.todoChat',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAKy10fvn7xNHquvPOrO2CBvXzDK8xO82M',
    appId: '1:531978593093:web:cfb606a7260eaa081c142c',
    messagingSenderId: '531978593093',
    projectId: 'todo-chat-f70f5',
    authDomain: 'todo-chat-f70f5.firebaseapp.com',
    storageBucket: 'todo-chat-f70f5.appspot.com',
    measurementId: 'G-P8JPHS4EMN',
  );
}