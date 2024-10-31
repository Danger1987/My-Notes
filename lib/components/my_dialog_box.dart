import 'package:flutter/material.dart';
import 'package:get/get.dart';

void myDialogBox({required String title, required VoidCallback onPressed}) {
  Get.dialog(
    AlertDialog(
      backgroundColor: Colors.grey[700],
      title: Center(
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.grey[200], fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: onPressed,
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
