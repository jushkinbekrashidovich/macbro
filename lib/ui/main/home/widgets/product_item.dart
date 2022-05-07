import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macbro/base/base_functions.dart';
import 'package:macbro/core/theme/app_colors.dart';
import 'package:macbro/data/models/new/new_response.dart';

import '../../../../data/models/category/FeaturedListRespnse.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, this.new_product}) : super(key: key);
  final Products? new_product;

  @override
  Widget build(BuildContext context) {
    return Container(
     // width: 200,
      height: 300,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 152.w,
            height: 160.h,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Stack(
              children: [
                Center(
                    child: Image.network(
                  new_product?.image ??
                      'https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg',
                  width: 124.w,
                  height: 112.h,
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 24.h,
                      width: 24.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromRGBO(245, 245, 245, 1)),
                      child: const Center(
                        child: Icon(
                          CupertinoIcons.heart_fill,
                          size: 15,
                          color: Colors.grey,
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
            new_product?.name ?? '',
            textAlign: TextAlign.left,
            style: const TextStyle(color: Colors.black, fontSize: 17, ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            BaseFunctions.moneyFormatSymbol(new_product?.cheapestPrice ?? 0),
            textAlign: TextAlign.left,
            style: const TextStyle(color: Colors.blue, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
