// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class CatalogFormScreen extends StatelessWidget {
  static String routeName = "/catalog-form-screen";
  const CatalogFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Add Catalog",
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.w900,
            fontSize: 16,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> items = ["Item1", "Item2", "Item3", "Item4", "Item5"];

  String? selectedItem = 'Item1';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                "Description",
                style: TextStyle(),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 2.0,
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 14,
                    color: kTextColor.withOpacity(.7),
                    fontWeight: FontWeight.w800,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                "Category",
                style: TextStyle(),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 2.0,
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: DropdownButtonFormField<String>(
                  style: TextStyle(
                    fontSize: 14,
                    color: kTextColor.withOpacity(.7),
                    fontWeight: FontWeight.w800,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  value: selectedItem,
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  onChanged: (item) {
                    selectedItem = item;
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                "Delivery time",
                style: TextStyle(),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 2.0,
              child: Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "20",
                      style: TextStyle(
                        fontSize: 14,
                        color: kTextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "days",
                      style: TextStyle(
                        fontSize: 14,
                        color: kTextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                "Budget",
                style: TextStyle(),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 2.0,
              child: Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "\$1,750",
                  style: TextStyle(
                    fontSize: 14,
                    color: kTextColor.withOpacity(.7),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                "Add Photo",
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  // height: 60,
                  // width: 80,
                  height: SizeConfig.screenHeight / 10,
                  width: SizeConfig.screenWidth / 1.57,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.only(right: 10),
                      width: SizeConfig.screenWidth / 5.15,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth / 40),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: SizeConfig.screenHeight / 10,
                  width: SizeConfig.screenWidth / 5.15,
                  color: Colors.grey,
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: Text(
                "ADD",
                style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
