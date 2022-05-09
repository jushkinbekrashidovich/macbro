import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:macbro/controller/main/home/home_controller.dart';
import 'package:macbro/main.dart';

import '../../../base/base_functions.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../data/hive/products.dart';
import '../home/widgets/product_item.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) => ValueListenableBuilder(
          valueListenable: Hive.box(FAVORITES_BOX).listenable(),
          builder: (context, box, child) {
            List posts = List.from(Hive.box(FAVORITES_BOX).values);
            return ListView(
              children: [
                   ...posts.map((e) => Container(
                  // width: 200,
                  height: 300,
                  margin: const EdgeInsets.only(right: 12),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 152,
                        height: 160,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Stack(
                          children: [
                            Center(
                                child: Image.network(
                              e.image ??
                                  'https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg',
                              width: 124,
                              height: 112,
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color.fromRGBO(
                                          245, 245, 245, 1)),
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () {
                                        Hive.box(FAVORITES_BOX)
                                            .delete(e.id);
                                        // if (Hive.box(FAVORITES_BOX)
                                        //     .containsKey(productItem!.id)) {
                                        //   Hive.box(FAVORITES_BOX)
                                        //       .delete(productItem!.id);
                                        // } else {
                                        //   Hive.box(FAVORITES_BOX)
                                        //       .put(productItem!.id, productItem);
                                        // }
                                      },
                                      icon: Icon(
                                          Hive.box(FAVORITES_BOX)
                                                  .containsKey(e.id)
                                              ? CupertinoIcons.heart_fill
                                              : CupertinoIcons.heart_fill,
                                          color: Colors.grey),
                                      iconSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        e.name ?? '',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        BaseFunctions.moneyFormatSymbol(
                            e.cheapestPrice ?? 0),
                        textAlign: TextAlign.left,
                        style: AppTextStyles.productprice,
                      ),
                    ],
                  ),
                ),),
              ],
              
            );
          },
        ),
      ),
    );
  }
}
