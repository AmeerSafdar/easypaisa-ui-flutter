// ignore_for_file: prefer_const_constructors

import 'package:easypaisa_ui/helper/config/SizeConfig.dart';
import 'package:easypaisa_ui/helper/constants/color_helper.dart';
import 'package:easypaisa_ui/helper/constants/icon_helper.dart';
import 'package:easypaisa_ui/helper/constants/image_helper.dart';
import 'package:easypaisa_ui/helper/constants/screen_percentage.dart';
import 'package:easypaisa_ui/presentation_layer/home_screen/home_screen.dart';
import 'package:easypaisa_ui/presentation_layer/my_account/account_screen.dart';
import 'package:easypaisa_ui/presentation_layer/promotion_screen/promotion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/navbar_bloc/nav_bloc.dart';
import '../blocs/navbar_bloc/nav_states.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: GREEN_COLOR,
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: GREEN_COLOR,
            leading: CircleAvatar(
              backgroundImage: AssetImage(USERIMG),
            ),
            title: Image.asset(
              LOGO,
              fit: BoxFit.cover,
              height:
                  SizeConfig.screenSizeHeight! * ScreenPercentage.SCREEN_SIZE_3,
            ),
            centerTitle: true,
            elevation: 0,
            toolbarHeight:
                SizeConfig.screenSizeHeight! * ScreenPercentage.SCREEN_SIZE_4,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(SEARCHICON),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(NOTIFICATIONICON),
              ),
            ],
          ),
          body: BlocBuilder<NavigationCubit, NavigationState>(
              builder: (context, state) {
            if (state.navbarItem == NavbarItem.home) {
              return HomeScreen();
            } else if (state.navbarItem == NavbarItem.promotion) {
              return PromotionScreen();
            } else if (state.navbarItem == NavbarItem.myaccount) {
              return MyAccount();
            }
            return Container();
          }),
          bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
              builder: (context, state) {
            return BottomNavigationBar(
                onTap: (index) {
                  if (index == 0) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.home);
                  } else if (index == 1) {
                    // BlocProvider.of<NavigationCubit>(context)
                    //     .getNavBarItem(NavbarItem.cashpoints);
                  } else if (index == 2) {
                    // BlocProvider.of<NavigationCubit>(context)
                    //     .getNavBarItem(NavbarItem.scancode);
                  } else if (index == 3) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => PromotionScreen())));
                    // BlocProvider.of<NavigationCubit>(context)
                    //     .getNavBarItem(NavbarItem.promotion);
                  } else if (index == 4) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => MyAccount())));
                    // BlocProvider.of<NavigationCubit>(context)
                    //     .getNavBarItem(NavbarItem.myaccount);
                  }
                },
                //
                unselectedItemColor: BLACK_COLOR,
                showUnselectedLabels: true,
                selectedItemColor: GREEN_COLOR,
                currentIndex: state.index,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(HOMEICON),
                    label: "HOME",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CASHPOINTS),
                    label: "CASHPOINTS",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(GRIDVIEWICON),
                    label: "Scan Code",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(PROMOTIONICON),
                    label: "Promotion",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(USERICON),
                    label: "Account",
                  ),
                ]);
          }),
        ));
  }
}
