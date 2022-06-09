import 'package:get/get.dart';
import 'package:google_sign_in_getx/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}
