import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro/controller/main/home/home_controller.dart';
import 'package:macbro/core/theme/app_text_style.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => GridView.builder(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        shrinkWrap: true,
        itemCount: controller.categories.length,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          var newCategories = controller.categories[index];
          return Container(
            height: 166,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  newCategories.image ??
                      'https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg',
                  height: 110,
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/notfound.png',
                          height: 100,
                        ));
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(newCategories.name ?? ''),
              ],
            ),
          );
        },
      ),
    );
  }
}
