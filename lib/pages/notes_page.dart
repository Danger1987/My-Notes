import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/controllers/notes_controller.dart';

class NotesPage extends GetView<NotesController> {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Notes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              controller.logOut();
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
