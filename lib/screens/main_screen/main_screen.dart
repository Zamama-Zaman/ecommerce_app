// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nidhub_app/screens/home/home_screen.dart';
import 'package:nidhub_app/screens/place_offer/place_offer_screen.dart';
import 'package:nidhub_app/screens/profile/profile_screen.dart';
import 'package:nidhub_app/screens/request/request_screen.dart';
import 'package:nidhub_app/screens/review_offers/review_offers_screen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = "home-screen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      // print("Selected Index: " + _controller.index.toString());
    });
  }

  List<Widget> list = [
    Tab(text: "HOME"),
    Tab(text: "REQUEST"),
    Tab(text: "OFFERS"),
    Tab(text: "PROFILE"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "NIDHUB",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
        bottom: TabBar(
          onTap: (index) {
            // Should not used it as it only called when tab options are clicked,
            // not when user swapped
          },
          controller: _controller,
          tabs: list,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, PlaceOffer.routeName);
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          HomeScreen(),
          RequestScreen(),
          ReviewOffersScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
