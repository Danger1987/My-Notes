import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/controllers/register_controller.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
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
            onPressed: () async {},
            child: const Text('Register'),
          ),
          GestureDetector(
            onTap: () {
              Get.offAndToNamed(Routes.login);
            },
            child: const Text('Already Registered? Login Here'),
          )
        ],
      ),
    );
  }
}
