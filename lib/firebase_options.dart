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
    apiKey: 'AIzaSyB69Vjhv76FueWoxZNaSbEQnaNhcqd1mkw',
    appId: '1:695532651429:web:ca9fb074aea1d8852e5e4c',
    messagingSenderId: '695532651429',
    projectId: 'fir-studyl24-9476e',
    authDomain: 'fir-studyl24-9476e.firebaseapp.com',
    storageBucket: 'fir-studyl24-9476e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCC-C_n59CWWGwJz_eMchr_EL5ptunjNgw',
    appId: '1:695532651429:android:cf735a690335a12f2e5e4c',
    messagingSenderId: '695532651429',
    projectId: 'fir-studyl24-9476e',
    storageBucket: 'fir-studyl24-9476e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkXDKlI3s_3TqRN2FmlXy2gyFm8vgzEbg',
    appId: '1:695532651429:ios:998084742d15065e2e5e4c',
    messagingSenderId: '695532651429',
    projectId: 'fir-studyl24-9476e',
    storageBucket: 'fir-studyl24-9476e.appspot.com',
    iosBundleId: 'com.example.myStudyLifeClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBkXDKlI3s_3TqRN2FmlXy2gyFm8vgzEbg',
    appId: '1:695532651429:ios:998084742d15065e2e5e4c',
    messagingSenderId: '695532651429',
    projectId: 'fir-studyl24-9476e',
    storageBucket: 'fir-studyl24-9476e.appspot.com',
    iosBundleId: 'com.example.myStudyLifeClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB69Vjhv76FueWoxZNaSbEQnaNhcqd1mkw',
    appId: '1:695532651429:web:58c80891da6cb9692e5e4c',
    messagingSenderId: '695532651429',
    projectId: 'fir-studyl24-9476e',
    authDomain: 'fir-studyl24-9476e.firebaseapp.com',
    storageBucket: 'fir-studyl24-9476e.appspot.com',
  );
}
