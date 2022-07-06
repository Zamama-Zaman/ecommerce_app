import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:nidhub_app/models/home_model.dart';

class HomeController extends GetxController {
  Rx<HomeModel> home = HomeModel(
    error: false,
    slider: [],
    category: [],
    popular: [],
    verified: [],
  ).obs;

  // var home = <HomeModel>[].obs;

  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchHomeData();
  }

  Future<void> fetchHomeData() async {
    try {
      isLoading.value = true;
      final response =
          await http.get(Uri.parse("https://apprant.com/nidhub/home.php"));
      if (response.statusCode == 200) {
        Future.delayed(const Duration(seconds: 20), () {
          home = HomeModel.fromJson(jsonDecode(response.body)).obs;
          isLoading.value = false;
        });
      } else {
        Get.snackbar(
            "Error Loading Data", "Server Response: ${response.statusCode}");
      }
    } catch (e) {
      Get.snackbar("Exception Thrown", "Error: $e");
    }
  }
}
