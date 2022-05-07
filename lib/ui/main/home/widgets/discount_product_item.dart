import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macbro/core/theme/app_colors.dart';

class DiscountProductItem extends StatelessWidget {
  const DiscountProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    child: Image.asset(
                  'assets/svg/img.png',
                  width: 124.w,
                  height: 112.h,
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 42.w,
                      height: 21.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [
                                Color.fromRGBO(91, 169, 255, 1),
                                Color.fromRGBO(0, 122, 255, 1),
                              ])),
                      child: const Center(
                        child: Text(
                          '-25%',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 11),
                        ),
                      ),
                    ),
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
            'MacBook',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'от 10 599 999 сум',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
