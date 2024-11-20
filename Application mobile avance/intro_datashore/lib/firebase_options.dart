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
    apiKey: 'AIzaSyC_3XJ-l9JsSsaUIYepLdW60VLro56NNuQ',
    appId: '1:656755816862:web:99bec1d70df5d256143e8f',
    messagingSenderId: '656755816862',
    projectId: 'cours-firestore-811f3',
    authDomain: 'cours-firestore-811f3.firebaseapp.com',
    storageBucket: 'cours-firestore-811f3.firebasestorage.app',
    measurementId: 'G-PH80S45TPM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhLMIhFdXX_mwD-WwO_08v0ty5FP3ENPI',
    appId: '1:656755816862:android:8f574bda00649ed0143e8f',
    messagingSenderId: '656755816862',
    projectId: 'cours-firestore-811f3',
    storageBucket: 'cours-firestore-811f3.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDeqtFiUBx6qm0vp_3QZrq5XcR_JDyP9_Y',
    appId: '1:656755816862:ios:568ca82bc4380fd4143e8f',
    messagingSenderId: '656755816862',
    projectId: 'cours-firestore-811f3',
    storageBucket: 'cours-firestore-811f3.firebasestorage.app',
    iosBundleId: 'com.example.introDatashore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDeqtFiUBx6qm0vp_3QZrq5XcR_JDyP9_Y',
    appId: '1:656755816862:ios:568ca82bc4380fd4143e8f',
    messagingSenderId: '656755816862',
    projectId: 'cours-firestore-811f3',
    storageBucket: 'cours-firestore-811f3.firebasestorage.app',
    iosBundleId: 'com.example.introDatashore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC_3XJ-l9JsSsaUIYepLdW60VLro56NNuQ',
    appId: '1:656755816862:web:42ef92695a40d458143e8f',
    messagingSenderId: '656755816862',
    projectId: 'cours-firestore-811f3',
    authDomain: 'cours-firestore-811f3.firebaseapp.com',
    storageBucket: 'cours-firestore-811f3.firebasestorage.app',
    measurementId: 'G-L2HC8Z31X9',
  );
}