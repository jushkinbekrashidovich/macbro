import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/banners/banners_response.dart';

class BannerI extends StatelessWidget {
  const BannerI({Key? key, this.banner}) : super(key: key);

  final Banners? banner;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 180.h,
      margin: const EdgeInsets.only(top: 24, left: 18, right: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: banner?.image ??
                  'https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg',
              fit: BoxFit.fill,
              errorWidget: (_, __, ___) => Image.asset(
                'assets/svg/img_1.png',
                height: 24.h,
                width: 19.54.w,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Простые решения ',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),
                  Text(
                    banner?.title ?? '',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Image.asset(
                    'assets/svg/img_1.png',
                    height: 24.h,
                    width: 19.54.w,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
