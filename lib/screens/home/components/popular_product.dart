// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nidhub_app/components/product_card.dart';
import 'package:nidhub_app/controllers/home_controller.dart';
import 'package:nidhub_app/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _homeController = Get.find<HomeController>();
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Verified Vendors", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Obx(
            () => Row(
              children: [
                ...List.generate(
                  // demoProducts.length,
                  _homeController.home.value.verified.length,
                  (index) {
                    // if (demoProducts[index].isPopular)
                    //   return ProductCard(product: demoProducts[index]);

                    // return SizedBox
                    //     .shrink(); // here by default width and height is 0
                    return ProductCard(
                        product: _homeController.home.value.verified[index]);
                  },
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
