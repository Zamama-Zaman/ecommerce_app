import 'package:get/get.dart';
import 'package:nidhub_app/controllers/home_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}
