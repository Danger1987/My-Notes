import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/controllers/login_controller.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Log In', style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller.emailController,
            keyboardType: TextInputType.emailAddress,
            autocorrect: false,
            decoration: const InputDecoration(hintText: 'Enter Email Here'),
          ),
          TextField(
            controller: controller.passwordController,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(hintText: 'Enter Password Here'),
          ),
          TextButton(
            onPressed: () {
              controller.logIn();
            },
            child: const Text('Login'),
          ),
          GestureDetector(
            onTap: () {
              Get.offAndToNamed(Routes.register);
            },
            child: const Text('Not Registered Yet? Register Here'),
          ),
        ],
      ),
    );
  }
}
