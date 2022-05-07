import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macbro/data/models/new/new_response.dart';

import '../widgets/product_item.dart';

class NewItem extends StatelessWidget {
  const NewItem({Key? key, this.new_product}) : super(key: key);

 final News? new_product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Новые',
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
                ProductItem(),
                ProductItem(),
                ProductItem(),
                ProductItem(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
