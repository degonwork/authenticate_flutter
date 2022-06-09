import 'package:get/get.dart';
import 'package:google_sign_in_getx/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}
