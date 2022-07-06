import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FirebaseServices {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<bool> signUpWithEmailAndPassword(String email, String password) async {
    try {
      final _user = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (_user != null) {
        print("I am called true");
        return true;
      } else {
        print("I am called false");
        return false;
      }
    } catch (e) {
      Get.snackbar(
        'Something went wrong',
        '$e',
        snackPosition: SnackPosition.BOTTOM,
      );
      print("error : $e");
      return false;
    }
  }

  Future<bool> loginWithEmailAndPassword(String email, String password) async {
    try {
      final _user = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (_user != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      Get.snackbar(
        'Something went wrong',
        '$e',
        snackPosition: SnackPosition.BOTTOM,
      );
      print("error : $e");
      return false;
    }
  }
}
