import 'package:flutter/material.dart';

import '../../helper/config/SizeConfig.dart';
import '../../helper/constants/color_helper.dart';
import '../../helper/constants/dimensions.dart';
import '../../helper/constants/icon_helper.dart';
import '../../helper/constants/screen_percentage.dart';

class MonetizationWIdget extends StatelessWidget {
  const MonetizationWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Dimensions.D_15),
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.D_10),
      height: SizeConfig.screenSizeHeight! * ScreenPercentage.SCREEN_SIZE_5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.RADIUS_EXTRA_LARGE),
        color: GREY_COLOR200,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(MONETIZATION),
          const SizedBox(
            width: 5,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ONE RUPESS GAME",
                style: TextStyle(color: GREEN_COLOR),
              ),
              const Text(
                "Buy amazing product for Rs.1 only.",
                style: TextStyle(fontSize: Dimensions.D_8),
              ),

              //invitation widget
            ],
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(Dimensions.D_5),
            decoration: BoxDecoration(
                color: GREEN_COLOR,
                borderRadius:
                    BorderRadius.circular(Dimensions.RADIUS_EXTRA_LARGE)),
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.D_15, vertical: Dimensions.D_4),
            child: Text(
              "See more",
              style: TextStyle(color: WHITE_COLOR),
            ),
          )
        ],
      ),
    );
  }
}
