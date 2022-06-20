import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nidhub_app/all_controller_binding.dart';
import 'package:nidhub_app/routes.dart';
import 'package:nidhub_app/screens/sign_in/sign_in_screen.dart';
import 'package:nidhub_app/screens/splash/splash_screen.dart';
import 'package:nidhub_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: AllControllerBinding(),
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
