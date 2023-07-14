import 'package:flutter/material.dart';

import '../../helper/constants/color_helper.dart';
import '../../helper/constants/dimensions.dart';
import '../../helper/constants/image_helper.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: LIGHT_GREEN,
          borderRadius: BorderRadius.circular(Dimensions.RADIUS_LARGE)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            horizontal: Dimensions.PADDING_SIZE_LARGE),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: Dimensions.D_40,
              backgroundImage: AssetImage(USERIMG),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.D_12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "0300-XXXXXXX",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Ameer Safdar",
                  ),
                  Text(
                    "example@gmail.com",
                  ),
                ],
              ),
            ),
            Container(
              // alignment: Alignment.topRight,
              margin: const EdgeInsets.only(left: Dimensions.D_10),
              decoration: BoxDecoration(
                  color: WHITE_COLOR,
                  borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL)),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.D_6, horizontal: Dimensions.D_12),
                child: Text("edit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
