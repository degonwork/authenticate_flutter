import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in_getx/controllers/home_controller.dart';

class WelcomeController extends GetxController {
  HomeController homeController = Get.find<HomeController>();
  late User user;
  @override
  void onInit() async {
    super.onInit();
    user = Get.arguments;
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> logout() async {
    await homeController.googleSignIn.disconnect();
    await homeController.firebaseAuth.signOut();
  }
}
