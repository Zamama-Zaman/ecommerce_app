// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nidhub_app/screens/product_form/product_form_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../constants.dart';

class ProductListScreen extends StatelessWidget {
  static String routeName = "/product-list-screen";
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, ProductFormScreen.routeName);
          },
          icon: Icon(Icons.add),
          label: Text('Add Product'),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Calagoue",
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.w900,
              fontSize: 16,
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("12 Results"),
                  Spacer(),
                  Container(
                    height: 25,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Upload",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .8,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) => Card(
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Nike Air Max 270",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "React ENG",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: 5),
                          SmoothStarRating(
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            rating: 4.0,
                            size: 15,
                            starCount: 5,
                            onRated: (value) {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Row(
              //   children: [
              //     Container(
              //       height: 200,
              //       width: 175,
              //       color: Colors.green,
              //     ),
              //     SizedBox(width: 10),
              //     Container(
              //       height: 200,
              //       width: 175,
              //       color: Colors.green,
              //     ),
              //   ],
              // ),
            ],
          ),
        ));
  }
}
