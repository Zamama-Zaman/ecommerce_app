// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nidhub_app/components/coustom_bottom_nav_bar.dart';

import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
