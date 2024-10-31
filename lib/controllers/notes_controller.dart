import 'package:get/get.dart';
import 'package:my_notes/components/constants.dart';
import 'package:my_notes/components/my_dialog_box.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class NotesController extends GetxController {
  void logOut() {
    myDialogBox(
      title: 'Are You Sure You Want To Log Out?',
      onPressed: () {
        firebase.signOut().then((value) {
          Get.back();
          Get.offAndToNamed(Routes.login);
        });
      },
    );
  }
}
