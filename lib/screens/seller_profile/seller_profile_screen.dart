// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nidhub_app/screens/catalog_form/catalog_form_screen.dart';
import 'package:nidhub_app/screens/product_form/product_form_screen.dart';
import 'package:nidhub_app/screens/product_list/product_list_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SellerProfileScreen extends StatelessWidget {
  static String routeName = "/seller-profile";
  const SellerProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, CatalogFormScreen.routeName);
        },
        icon: Icon(Icons.add),
        label: Text('Add Catalog'),
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
  double rating = 4.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Monica Gamage",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              SmoothStarRating(
                color: Colors.yellow,
                borderColor: Colors.yellow,
                rating: rating,
                size: 22,
                starCount: 5,
                onRated: (value) {
                  setState(() {
                    rating = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Text(
                "@monicagamage",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "My name is Monica, I am caterer and\nbaker.",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Card(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Clothes and wears",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, ProductListScreen.routeName);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Clothes and wears",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, ProductListScreen.routeName);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
