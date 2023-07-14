// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:easypaisa_ui/helper/constants/color_helper.dart';
import 'package:easypaisa_ui/helper/constants/dimensions.dart';
import 'package:easypaisa_ui/helper/constants/icon_helper.dart';
import 'package:flutter/material.dart';

import '../account_setting/account_setting.dart';
import '../widgets/accountListTile.dart';
import '../widgets/top_header.dart';
import '../widgets/user_profile.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.D_15, vertical: Dimensions.D_5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top account
              const TopAccountHeader(),
              //user account
              const SizedBox(
                height: Dimensions.D_5,
              ),
              UserProfileWidget(),

              SizedBox(
                height: Dimensions.D_15,
              ),
              ////Account listTile Widget
              ///
              AccountListWidget(
                txt: "Account Level",
                icons: USERICON,
              ),
              AccountListWidget(
                tapped: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const AccountSettings())));
                },
                txt: "Account Setting",
                icons: SETTINGSICON,
              ),
              AccountListWidget(txt: "Transaction History", icons: CHECKLISTS),
              AccountListWidget(txt: "Goals & Rewards", icons: GOASLREWARD),
              AccountListWidget(txt: "My Approvals", icons: APPROVAL),
              AccountListWidget(txt: "Schedule Transactions", icons: SCHEDULE),
              AccountListWidget(txt: "My Favourites", icons: FAVOURITE),

              Text(
                "HELP",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_15),
              ),
              SizedBox(
                height: Dimensions.D_5,
              ),
              AccountListWidget(txt: "Fee Details", icons: FEEDETAILS),
              AccountListWidget(txt: "Helo & FAQs", icons: HELP),
            ],
          ),
        ),
      )),
    );
  }
}
