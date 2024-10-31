import 'package:get/get.dart';
import 'package:my_notes/components/constants.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class EmailVerificationController extends GetxController {
  void verifyEmail() async {
    await user?.sendEmailVerification();
  }

  void restart() async {
    await firebase.signOut();
    Get.offAndToNamed(Routes.login);
  }
}
