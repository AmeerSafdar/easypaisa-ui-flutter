import 'package:flutter/material.dart';

import '../../helper/constants/color_helper.dart';
import '../../helper/constants/dimensions.dart';

class TopAccountHeader extends StatelessWidget {
  const TopAccountHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "My Account",
              style: TextStyle(
                  fontSize: Dimensions.D_24, fontWeight: FontWeight.bold),
            ),
            Text("Profile, Setting & More")
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  height: Dimensions.D_25,
                  width: Dimensions.D_80,
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.PADDING_SIZE_DEFAULT),
                  child: Text(
                    'UR',
                    style: TextStyle(
                      color: BLACK_CLR,
                      fontSize: Dimensions.FONT_SIZE_10,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: BLACK_COLOR,
                      borderRadius:
                          BorderRadius.circular(Dimensions.RADIUS_DEFAULT)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.PADDING_SIZE_SMALL, vertical: 5),
                  child: Text(
                    'ENG',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.FONT_SIZE_10,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: GREEN_COLOR,
                      borderRadius:
                          BorderRadius.circular(Dimensions.RADIUS_DEFAULT)),
                ),
              ],
            ),
            const Text("V.1.0.9")
          ],
        )
      ],
    );
  }
}
