// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../../helper/config/SizeConfig.dart';
import '../../helper/constants/dimensions.dart';
import '../../helper/constants/screen_percentage.dart';
import '../../model/card_model.dart';

class LoadServiceWidget extends StatelessWidget {
  const LoadServiceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Dimensions.D_2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.D_12),
      ),
      margin: EdgeInsets.symmetric(
          horizontal:
              SizeConfig.screenSizeHeight! * ScreenPercentage.SCREEN_SIZE_2,
          vertical: SizeConfig.screenSizeHeight! * 0.01),
      child: Container(
        height: SizeConfig.screenSizeHeight! * ScreenPercentage.SCREEN_SIZE_12,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: secondCardLists.length,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
                  child: Column(
                    children: [
                      Image.asset(
                        secondCardLists[index].imgPath,
                        height: SizeConfig.screenSizeHeight! *
                            ScreenPercentage.SCREEN_SIZE_7,
                      ),
                      Text(
                        secondCardLists[index].text,
                        style: const TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }
}
