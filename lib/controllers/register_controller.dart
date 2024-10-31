import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/components/constants.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class RegisterController extends GetxController {
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

  void register() async {
    final email = emailController.text;
    final password = passwordController.text;

    try {
      await firebase
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) async {
        await user?.sendEmailVerification();
        Get.toNamed(Routes.verification);
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar('Weak Password', 'Password Must Be Longer Than 6 Letters');
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar('Invalid', 'Email Already In Use');
      } else {
        Get.snackbar(e.code, '');
      }
    }
  }
}
