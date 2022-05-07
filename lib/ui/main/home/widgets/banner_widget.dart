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
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
        child: CarouselSlider.builder(
          
          options: CarouselOptions(
            onPageChanged: (index, reason) =>
                      controller.setCounter(index),
            height: 190,
            autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 3),
          ),
          itemCount: controller.banners.length,
          itemBuilder: (context, index, realIndex) {
            var banner = controller.banners[index];
            return BannerI(
              banner: banner,
            );
          },
        ),
      ),
    );
  }
}
