import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:macbro/controller/main/home/home_controller.dart';
import 'package:macbro/main.dart';
import 'package:macbro/ui/main/home/widgets/product_item.dart';
import 'package:hive/hive.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GetBuilder<HomeController>(
        builder: (controller) => ValueListenableBuilder(
          valueListenable: Hive.box(FAVORITES_BOX).listenable(),
          builder: (context, box, _){
            return ListView.separated(
            padding: const EdgeInsets.only(left: 12, right: 12),
            separatorBuilder: (context, index) => const SizedBox(width: 7,),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var productItem = controller.news[index];
              return ProductItem(
                new_product: productItem,
              );
            },
            itemCount: controller.news.length,
          );
          },
        ),
      ),
    );
  }
}
