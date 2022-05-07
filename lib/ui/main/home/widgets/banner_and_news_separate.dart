import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_style.dart';

class SeparateBanner extends StatelessWidget {
  const SeparateBanner({Key? key}) : super(key: key);


 
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Новый',
              style: AppTextStyles.bannerDetailTitle,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
