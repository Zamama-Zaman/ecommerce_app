import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:nidhub_app/models/home_model.dart';

class HomeController extends GetxController {
  final HomeModel _home = "".obs as HomeModel;

  bool isLoading = false;

  @override
  void onInit() {
    super.onInit();
    fetchHomeData();
  }

  Future<void> fetchHomeData() async {
    try {
      final response = await http
          .get(Uri.parse("https://innovativehill.com/nidhub/home.php"));
      if (response.statusCode == 200) {
        print("Success");
      }
    } catch (e) {
      print("$e error");
    }
  }
}
