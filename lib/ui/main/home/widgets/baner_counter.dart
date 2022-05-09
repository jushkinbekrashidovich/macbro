import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro/controller/main/home/home_controller.dart';

class BannerCounter extends StatelessWidget {
  const BannerCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: controller.banners.asMap().entries.map((entry) {
          return Container(
            width: 8.0,
            height: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 2, 2, 2).withOpacity(
                  controller.current.value == entry.key ? 0.9 : 0.1),
            ),
          );
        }).toList(),
      ),
    );
  }
}
