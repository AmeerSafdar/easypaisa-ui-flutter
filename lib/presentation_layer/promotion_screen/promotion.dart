// ignore_for_file: must_be_immutable

import 'package:easypaisa_ui/helper/constants/color_helper.dart';
import 'package:easypaisa_ui/helper/constants/image_helper.dart';
import 'package:flutter/material.dart';

import '../widgets/promotion.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: GREEN_COLOR,
        title: const Text('Promotions'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            PromotionWidgetCard(img: PROMOTION1),
            PromotionWidgetCard(img: PROMOTION2),
            PromotionWidgetCard(img: PROMOTION3),
            PromotionWidgetCard(img: PROMOTION4),
            PromotionWidgetCard(img: PROMOTION5),
          ],
        ),
      ),
    );
  }
}
