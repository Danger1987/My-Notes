import 'package:get/get.dart';
import 'package:my_notes/components/constants.dart';

class EmailVerificationController extends GetxController {
  void verifyEmail() async {
    await user?.sendEmailVerification();
  }
}
