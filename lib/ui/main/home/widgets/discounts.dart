import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'discount_product_item.dart';
import 'product_item.dart';

class Discounts extends StatelessWidget {
  const Discounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Скидки',
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
              ],
            ),
          ),
        )
      ],
    );
  }
}
