// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "William Danny",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          "@willydan",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.female,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Post Request",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.blue,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Manage Orders/Offers",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(width: 3),
                  Icon(
                    Icons.mail_outline,
                    color: Colors.blue,
                    size: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "About",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(width: 3),
                  Icon(
                    Icons.phone_iphone_sharp,
                    color: Colors.blue,
                    size: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Invite Friends",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Container(
            //   height: 30,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     borderRadius: BorderRadius.circular(7),
            //   ),
            //   alignment: Alignment.center,
            //   child: Text(
            //     "Copy Link",
            //     style: TextStyle(
            //       fontWeight: FontWeight.w900,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            // SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  SizedBox(width: 3),
                  Icon(
                    Icons.phone_iphone_sharp,
                    color: Colors.blue,
                    size: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Change Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
