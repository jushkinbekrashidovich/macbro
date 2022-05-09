import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:macbro/ui/main/home/widgets/banner.dart';

import '../../../../controller/main/home/home_controller.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      
      builder: (controller) => CarouselSlider.builder(
        options: CarouselOptions(
          onPageChanged: (index, reason) => controller.setCounter(index),
          enlargeCenterPage: true,
          autoPlay: true,
          //viewportFraction: 2,
          autoPlayInterval: const Duration(seconds: 3),
        ),
        itemCount: controller.banners.length,
        itemBuilder: (context, index, realIndex) {
          var banner = controller.banners[index];
          return BannerItems(
            banner: banner,
          );
          
        },
      ),
    );
  }
}
