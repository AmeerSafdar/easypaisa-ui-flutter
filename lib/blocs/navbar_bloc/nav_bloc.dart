// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'nav_states.dart';

enum NavbarItem { home, cashpoints, scancode, promotion, myaccount }

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    debugPrint("navbar item is $navbarItem");
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.cashpoints:
        emit(NavigationState(NavbarItem.cashpoints, 1));
        break;
      case NavbarItem.scancode:
        emit(NavigationState(NavbarItem.scancode, 2));
        break;
      case NavbarItem.promotion:
        emit(NavigationState(NavbarItem.promotion, 3));
        break;
      case NavbarItem.myaccount:
        emit(NavigationState(NavbarItem.myaccount, 4));
        break;
    }
  }
}
