import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro/controller/main/home/home_controller.dart';

class GridviewPage extends StatelessWidget {
  const GridviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => GridView.builder(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
          var new_categories   = controller.categories[index];
          return Container(
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white 


            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Image.network(
                  new_categories.image ??
                      'https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg',
                      height: 110,
                      ),
                    
                const SizedBox(
                  height: 5,
                ),
                Text( new_categories.name ?? ''),
              ],
            ),
          );
        },
      ),
    );
    
  }
}


