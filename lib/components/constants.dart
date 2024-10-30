import 'package:firebase_auth/firebase_auth.dart';

final firebase = FirebaseAuth.instance;
final user = firebase.currentUser;

enum MenuAction {
  logout,
}
