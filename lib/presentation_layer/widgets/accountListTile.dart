// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

import '../../helper/constants/color_helper.dart';

class AccountListWidget extends StatelessWidget {
  VoidCallback? tapped;
  String txt;
  IconData icons;
  AccountListWidget(
      {Key? key, required this.txt, required this.icons, this.tapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tapped,
      contentPadding: const EdgeInsets.all(0),
      leading: Icon(
        icons,
        color: LIGHT_GREEN,
      ),
      title: Text(txt),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
