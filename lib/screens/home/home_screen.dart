// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nidhub_app/components/coustom_bottom_nav_bar.dart';
import 'package:nidhub_app/controllers/home_controller.dart';

import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    final _homeController = Get.find<HomeController>();
    return Scaffold(
      body: Obx(
        () => _homeController.isLoading.value
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Loading..."),
                    SizedBox(height: 20),
                    CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  ],
                ),
              )
            : Body(),
      ),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
