import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/controllers/email_verification_controller.dart';

class EmailVerificationPage extends GetView<EmailVerificationController> {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Verify Your Email',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          const Text('Verify Your Email'),
          TextButton(
            onPressed: () {
              controller.verifyEmail();
            },
            child: const Text('Send Email'),
          ),
        ],
      ),
    );
  }
}
