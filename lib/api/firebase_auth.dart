import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentications{
  final firebaseAuth = FirebaseAuth.instance;
  signUp({required String email,required String password,required VoidCallback onLoad})async{
    try{
      UserCredential userCred = await firebaseAuth
        .createUserWithEmailAndPassword(
        email: email,
        password: password);
      User? user = userCred.user;
      onLoad.call();
    } catch (e) {
      print("Error $e");
      //onLoad.call();
    }
  }

  signIn({required String email,required String password,required VoidCallback onLoad})async{
    try{
      UserCredential userCred = await firebaseAuth
          .signInWithEmailAndPassword(
          email: email,
          password: password);
      User? user = userCred.user;
      onLoad.call();
    } catch (e) {
      print(e);
      //onLoad.call();
    }
  }
}