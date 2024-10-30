import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/components/constants.dart';
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
          PopupMenuButton<MenuAction>(
            iconColor: Colors.white,
            onSelected: (value) {
              switch (value) {
                case MenuAction.logout:
                  controller.logOut();
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem<MenuAction>(
                  value: MenuAction.logout,
                  child: Text('Log Out'),
                ),
              ];
            },
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
