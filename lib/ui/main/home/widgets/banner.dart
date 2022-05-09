import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macbro/core/theme/app_text_style.dart';

import '../../../../data/models/banners/banners_response.dart';

class BannerItems extends StatelessWidget {
  const BannerItems({Key? key, this.banner}) : super(key: key);

  final Banners? banner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 12),
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          fit: StackFit.loose,
          children: [
            Positioned.fill(
              child: CachedNetworkImage(
                imageUrl: banner?.image ??
                    'https://www.pulsecarshalton.co.uk/wp-content/uploads/2016/08/jk-placeholder-image.jpg',
                fit: BoxFit.fill,
                errorWidget: (_, __, ___) => Image.asset('assets/error_banner.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    const Text(  'Cамые продвинутые смартфоны',
                          style:AppTextStyles.bannerDetailDescription,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          ),
                      Text(
                        banner?.title ?? '',
                        style: AppTextStyles.bannerDetailTitle),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
