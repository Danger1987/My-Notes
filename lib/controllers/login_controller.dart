import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final FirebaseAuth firebase = FirebaseAuth.instance;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void logIn() async {
    final email = emailController.text;
    final password = passwordController.text;

    try {
      final userCredentials = await firebase.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(userCredentials);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        print('Invalid Credentials');
      } else if (e.code == 'channel-error') {
        print('Please Enter Email and Password');
      } else if (e.code == 'invalid-email') {
        print('Enter a Valid Email');
      } else {
        print(e.code);
      }
    }
  }
}
