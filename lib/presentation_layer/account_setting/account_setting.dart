// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:easypaisa_ui/helper/constants/dimensions.dart';
import 'package:easypaisa_ui/presentation_layer/widgets/accountListTile.dart';
import 'package:flutter/material.dart';

import '../../helper/constants/color_helper.dart';
import '../../helper/constants/icon_helper.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: WHITE_COLOR,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(ARROW_BACK, color: BLACK_CLR)),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.D_15, horizontal: Dimensions.D_25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Account Settings",
              style: TextStyle(
                  fontSize: Dimensions.D_18, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.D_5),
              child: Text(
                "Account info, Settings & More",
              ),
            ),
            const SizedBox(
              height: Dimensions.D_20,
            ),
            const Text(
              "ACCOUNT",
            ),
            const SizedBox(
              height: Dimensions.D_20,
            ),
            AccountListWidget(txt: "Account Information", icons: PERSONREMOVE),
            AccountListWidget(txt: "Order New Debit Card", icons: ATMCARD),
            AccountListWidget(
                txt: "Change Easypaisa Account Pin", icons: ATMCARD),
            AccountListWidget(
                txt: "Link Telenor Microfinacne Bank", icons: ATMCARD),
            AccountListWidget(txt: "Link Debit Card", icons: ATMCARD),
            AccountListWidget(txt: "Get Your Tax Certificate", icons: ATMCARD),
          ],
        ),
      )),
    );
  }
}
