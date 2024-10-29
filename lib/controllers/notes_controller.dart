import 'package:get/get.dart';
import 'package:my_notes/components/constants.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class NotesController extends GetxController {
  void logOut() {
    firebase.signOut().then((value) => Get.offAndToNamed(Routes.login),);
  }
}
