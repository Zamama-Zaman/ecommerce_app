import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nidhub_app/controllers/home_controller.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _homeController = Get.find<HomeController>();
    return Obx(
      () => Container(
        height: 200.0,
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 200.0,
                width: double.infinity,
                child: Carousel(
                  dotSize: 6.0,
                  dotSpacing: 15.0,
                  dotPosition: DotPosition.bottomCenter,
                  images: [
                    ...List.generate(
                      _homeController.home.value.slider.length,
                      (index) => Image.network(
                        _homeController.home.value.slider[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                  // [
                  //   Image.asset('assets/images/1.jpg', fit: BoxFit.cover),
                  //   Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
                  //   Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
                  //   Image.asset('assets/images/4.jpg', fit: BoxFit.cover),
                  //   Image.asset('assets/images/5.jpg', fit: BoxFit.cover),
                  //   Image.asset('assets/images/6.jpg', fit: BoxFit.cover),
                  // ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
