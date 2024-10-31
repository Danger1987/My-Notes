import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/components/constants.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class LoginController extends GetxController {
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
      await firebase
          .signInWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then(
        (value) async {
          if (user?.emailVerified ?? false) {
            Get.offAndToNamed(Routes.notes);
          } else {
            await user?.sendEmailVerification();
            Get.toNamed(Routes.verification);
          }
        },
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        Get.snackbar('Invalid Credentials', 'Check Your Email & Password');
      } else if (e.code == 'channel-error') {
        Get.snackbar('Empty', 'Enter Your Email & Password');
      } else if (e.code == 'invalid-email') {
        Get.snackbar('Invalid Email', 'Check Your Email');
      } else {
        Get.snackbar(e.code, e.message ?? '');
      }
    }
  }
}
