import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro/controller/main/home/home_controller.dart';
import 'package:macbro/ui/main/home/widgets/product_item.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GetBuilder<HomeController>(
        builder: (controller) => ListView.separated(
          padding: EdgeInsets.only(left: 12, right: 12),
          separatorBuilder: (context, index) => const SizedBox(width: 7,),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var new_item = controller.news[index];
            return ProductItem(
              new_product: new_item,
            );
          },
          itemCount: controller.news.length,
        ),
      ),
    );
  }
}
