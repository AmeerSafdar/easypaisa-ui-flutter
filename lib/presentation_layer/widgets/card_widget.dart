// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../helper/config/SizeConfig.dart';
import '../../helper/constants/color_helper.dart';
import '../../helper/constants/dimensions.dart';
import '../../helper/constants/image_helper.dart';
import '../../helper/constants/screen_percentage.dart';

class SigninCardWidget extends StatelessWidget {
  const SigninCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
          horizontal:
              SizeConfig.screenSizeHeight! * ScreenPercentage.SCREEN_SIZE_2,
          vertical: SizeConfig.screenSizeHeight! * 0.01),
      elevation: Dimensions.D_2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT)),
      child: Container(
        height: SizeConfig.screenSizeHeight! * ScreenPercentage.SCREEN_SIZE_19,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.D_10, vertical: Dimensions.D_20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: Dimensions.D_10),
                    child: Image.asset(
                      LOGO1,
                      fit: BoxFit.cover,
                      height: SizeConfig.screenSizeHeight! *
                          ScreenPercentage.SCREEN_SIZE_3,
                    ),
                  ),
                  const Text(
                    "Ameer Safdar",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.D_4,
                    ),
                    child: Text(
                      "03000xxxxx",
                      style: TextStyle(
                          fontSize: Dimensions.D_20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.D_4,
                    ),
                    child: Text(
                      "Sign in to your easypaisa account",
                      style: TextStyle(
                          fontSize: Dimensions.D_13,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: GREEN_COLOR,
                    borderRadius:
                        BorderRadius.circular(Dimensions.RADIUS_EXTRA_LARGE)),
                height: SizeConfig.screenSizeHeight! *
                    ScreenPercentage.SCREEN_SIZE_5,
                width: SizeConfig.screenSizeWidth! *
                    ScreenPercentage.SCREEN_SIZE_25,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Sign in",
                      style: TextStyle(color: WHITE_COLOR, fontSize: 15)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
