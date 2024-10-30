import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/components/constants.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class NotesController extends GetxController {
  void logOut() {
    Get.dialog(
      AlertDialog(
        backgroundColor: Colors.grey[700],
        title: Center(
          child: Column(
            children: [
              Text(
                'Are You Sure You Want To Log Out?',
                style: TextStyle(color: Colors.grey[200], fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      firebase.signOut().then((value) {
                        Get.back();
                        Get.offAndToNamed(Routes.login);
                      });
                    },
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
                      'No',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
