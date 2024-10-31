import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/components/my_button.dart';
import 'package:my_notes/controllers/email_verification_controller.dart';

class EmailVerificationPage extends GetView<EmailVerificationController> {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[700],
        centerTitle: true,
        title: const Text(
          'Verify Your Email',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            const Text(
              "We've Sent A Verification Email To You. Please Check It In Order To Activate Your Account.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "If You Haven't Received A Verification Email Then Click The Button Below.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              onPressed: () {
                controller.verifyEmail();
              },
              title: 'Send Email',
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              onPressed: () {
                controller.restart();
              },
              title: 'Cancel',
            ),
          ],
        ),
      ),
    );
  }
}
