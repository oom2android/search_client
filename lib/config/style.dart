import 'package:flutter/cupertino.dart';
import 'package:search_client/config/color.dart';

class KStyle {
  static textStyleBlack12() {
    return const TextStyle(
        color: KColor.kBlack, fontWeight: FontWeight.bold, fontSize: 12);
  }

  static textStyleBlack14() {
    return const TextStyle(
        color: KColor.kBlack, fontWeight: FontWeight.bold, fontSize: 14);
  }

  static textStyleWhite14() {
    return const TextStyle(
        color: KColor.kWhite, fontWeight: FontWeight.bold, fontSize: 14);
  }

  static textStyle14({Color color = KColor.kBlack}) {
    return TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 14);
  }

  static textStyleBlue12() {
    return const TextStyle(
        color: KColor.kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 12);
  }

  static textStyleBlackTitle() {
    return const TextStyle(
        color: KColor.kBlack, fontWeight: FontWeight.bold, fontSize: 18);
  }
}
