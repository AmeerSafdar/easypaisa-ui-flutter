import 'package:easypaisa_ui/helper/constants/image_helper.dart';

class SecondCard {
  String imgPath;
  String text;
  SecondCard({required this.imgPath, required this.text});
}

List<SecondCard> secondCardLists = [
  SecondCard(imgPath: SENDMONEY, text: "Send Money"),
  SecondCard(imgPath: MOBILELOAD, text: "Easy Load"),
  SecondCard(imgPath: PACKAGES, text: "Mobile Package"),
  SecondCard(imgPath: BILLPAYMENTS, text: "Bill Payments"),
];
