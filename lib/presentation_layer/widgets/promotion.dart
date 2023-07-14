// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../helper/constants/color_helper.dart';
import '../../helper/constants/dimensions.dart';

class PromotionWidgetCard extends StatelessWidget {
  String img;
  PromotionWidgetCard({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.D_4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(Dimensions.D_4),
                topRight: Radius.circular(Dimensions.D_4)),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Telenor Double Value Social Bundle!',
              style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_15, color: GREEN_COLOR),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'exclusively for New Easypaisa app users',
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                  ),
                ),
                Text(
                  'Read more',
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                    color: GREEN_COLOR,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
