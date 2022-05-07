import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macbro/ui/main/home/widgets/discount_product_item.dart';

import 'product_item.dart';

class Featured extends StatelessWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Рекомендуемые',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.arrow_right))
          ],
        ),
        SizedBox(
          width: 400,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                DiscountProductItem(),
                DiscountProductItem(),
                DiscountProductItem(),
                DiscountProductItem(),
                DiscountProductItem(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
