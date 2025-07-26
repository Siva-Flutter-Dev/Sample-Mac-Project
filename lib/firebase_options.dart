import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb,defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    } else if (Platform.isIOS || Platform.isMacOS) {
      return ios;
    } else if (Platform.isAndroid) {
      return android;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }


  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyDDcsvvIaxLoqQ96KjrNlGc3FjTeYX74-s",
      authDomain: "sample-project-22ab7.firebaseapp.com",
      projectId: "sample-project-22ab7",
      storageBucket: "sample-project-22ab7.firebasestorage.app",
      messagingSenderId: "329905646302",
      appId: "1:329905646302:web:d50fc3db3652b8d8ec304f",
      measurementId: "G-1Z1617FWE8"
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqq5dN4Hk_i1ENDVytRfpgDcsF18h53RA',
    appId: '1:329905646302:android:e4e31987e41930b7ec304f',
    messagingSenderId: '329905646302',
    projectId: 'sample-project-22ab7',
    storageBucket: 'sample-project-22ab7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAv43wp0yAgyBiv24r_HNfOitq8MkBXRNw',
    appId: '1:329905646302:ios:575e7a32f986e1c4ec304f',
    messagingSenderId: '329905646302',
    projectId: 'sample-project-22ab7',
    storageBucket: 'sample-project-22ab7.firebasestorage.app',
    //iosClientId: 'your-ios-client-id.apps.googleusercontent.com',
    iosBundleId: 'io.sampleMacProject',
  );
}
