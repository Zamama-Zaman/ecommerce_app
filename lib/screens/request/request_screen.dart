// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:nidhub_app/components/product_card.dart';
import 'package:nidhub_app/constants.dart';
import 'package:nidhub_app/models/Product.dart';
import 'package:nidhub_app/screens/form/form_screen.dart';

import '../../size_config.dart';

class RequestScreen extends StatelessWidget {
  static const routeName = "request-screen";
  const RequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, FormScreen.routeName);
        },
        icon: Icon(Icons.add),
        label: Text('Post a request'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) return RequestCard();

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RequestCard extends StatelessWidget {
  const RequestCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 260,
        width: SizeConfig.screenWidth / 1.2,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.only(top: 20),
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Color(0xFFECEFFE),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      "Laura Octavian",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text.rich(
                      TextSpan(
                        text:
                            "I need a flutter App developer to develop a beautiful app that looks like WhatsApp and Instragram for some reasons...",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 13,
                        ),
                        children: [
                          TextSpan(
                            text: "More",
                            style: TextStyle(
                              color: kTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 75,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0xFFECEFFE),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: "Duration",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 13,
                                ),
                                children: [
                                  TextSpan(
                                    text: " 10 days",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                text: "Budget",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 13,
                                ),
                                children: [
                                  TextSpan(
                                    text: " US\$150",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                text: "Category",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 13,
                                ),
                                children: [
                                  TextSpan(
                                    text: " US\$150",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                text: "Time",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 13,
                                ),
                                children: [
                                  TextSpan(
                                    text: " 2 days ago",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFECEFFE),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Reviews Offers (10)",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
