import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/components/my_button.dart';
import 'package:my_notes/components/my_textfield.dart';
import 'package:my_notes/controllers/login_controller.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Log In',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyTextfield(
              controller: controller.emailController,
              keyboardType: TextInputType.emailAddress,
              enableSuggestions: true,
              prefixIcon: Icons.alternate_email_rounded,
              labelText: 'Email',
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextfield(
              controller: controller.passwordController,
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
              prefixIcon: Icons.key_rounded,
              labelText: 'Password',
            ),
            const SizedBox(
              height: 15,
            ),
            MyButton(
              onPressed: () {
                controller.logIn();
              },
              title: 'Log In',
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not Registered Yet? '),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed(Routes.register);
                  },
                  child: const Text(
                    'Register Here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
