// ignore_for_file: sized_box_for_whitespace, must_be_immutable, camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:easypaisa_ui/helper/config/SizeConfig.dart';
import 'package:easypaisa_ui/helper/constants/color_helper.dart';
import 'package:easypaisa_ui/helper/constants/dimensions.dart';
import 'package:easypaisa_ui/helper/constants/image_helper.dart';
import 'package:easypaisa_ui/helper/constants/screen_percentage.dart';
import 'package:flutter/material.dart';

import '../widgets/card_widget.dart';
import '../widgets/load_srvice_widget.dart';
import '../widgets/monetization_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: SizeConfig.screenSizeHeight! *
                        ScreenPercentage.SCREEN_SIZE_34,
                    width: double.infinity,
                    color: WHITE_COLOR,
                  ),
                  Container(
                    height: SizeConfig.screenSizeHeight! *
                        ScreenPercentage.SCREEN_SIZE_26,
                    color: GREEN_COLOR,
                  ),
                  //card signin widget
                  const SigninCardWidget(),

                  //bottom card widget
                  const Positioned(
                    top: 165,
                    left: 0,
                    right: 0,
                    child: LoadServiceWidget(),
                  ),
                ],
              ),

              //outer widgets
              // SizedBox(
              //   height: SizeConfig.screenSizeHeight! *
              //       ScreenPercentage.SCREEN_SIZE_5,
              // ),

              ///monetization widget
              const MonetizationWIdget(),

              //invite and earn widget
              SizedBox(
                height: SizeConfig.screenSizeHeight! *
                    ScreenPercentage.SCREEN_SIZE_2,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        serviceProvider("Invite & Earn"),
                        serviceProvider("Bus Tickets"),
                        serviceProvider("Play Games"),
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.D_10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.D_13,
                          vertical: Dimensions.D_10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          serviceProvider("Topups"),
                          serviceProvider("Tohfa"),
                          serviceProvider("More"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //indicator--
              Container(
                  height: Dimensions.D_8,
                  decoration: BoxDecoration(
                    color: GREEN_COLOR,
                    shape: BoxShape.circle,
                  )),

              // promotions

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.D_28),
                child: Text(
                  "Promotions",
                  style: TextStyle(
                      fontSize: Dimensions.D_16, fontWeight: FontWeight.bold),
                ),
              ),

              CarouselSlider(
                options: CarouselOptions(
                  disableCenter: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  autoPlayCurve: Curves.easeIn,
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  aspectRatio: 21 / 9,
                  viewportFraction: 0.9,
                ),
                items: [
                  sliderWidget(imgpath: PROMOTION1),
                  sliderWidget(
                    imgpath: PROMOTION2,
                  ),
                  sliderWidget(
                    imgpath: PROMOTION3,
                  ),
                  sliderWidget(imgpath: PROMOTION4),
                  sliderWidget(
                    imgpath: PROMOTION5,
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.D_20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Column serviceProvider(String text) {
    return Column(
      children: [
        Image.asset(
          SENDMONEY,
          height: Dimensions.D_50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        )
      ],
    );
  }
}

class sliderWidget extends StatelessWidget {
  String imgpath;
  sliderWidget({Key? key, required this.imgpath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.RADIUS_LARGE)),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(
                Radius.circular(Dimensions.RADIUS_LARGE)),
            child: Image.asset(imgpath, fit: BoxFit.cover)));
  }
}
