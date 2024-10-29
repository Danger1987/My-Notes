import 'package:get/get.dart';
import 'package:my_notes/components/constants.dart';
import 'package:my_notes/page_routes/page_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _redirect();
  }

  void _redirect() async {
    await Future.delayed(Duration.zero);
    if (user != null) {
      if (user!.emailVerified) {
        print('Email is Verified');
        // Get.offAndToNamed(Routes.login);
      } else {
        Get.offAndToNamed(Routes.verification);
      }
    } else {
      Get.offAndToNamed(Routes.login);
    }
  }
}
