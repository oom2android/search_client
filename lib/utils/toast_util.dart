import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:search_client/config/color.dart';

//全平台通用Toast
class ToastUtil {
  static FToast? _fToast;

  static const int lengthShort = 2;
  static const int lengthLong = 4;

  static showToast(BuildContext context, String msg,
      {int duration = lengthShort,
      ToastGravity gravity = ToastGravity.BOTTOM}) {
    _init(context);
    _fToast?.showToast(
      child: _showToast(msg, icon: Icons.check),
      gravity: gravity,
      toastDuration: Duration(seconds: duration),
    );
  }

  static _init(BuildContext context) {
    if (_fToast != null) {
      _fToast?.removeCustomToast();
    }
    _fToast = FToast();
    _fToast?.init(context);
  }

  static showText(BuildContext context, String msg,
      {int duration = lengthShort,
      ToastGravity gravity = ToastGravity.BOTTOM}) {
    _init(context);
    _fToast?.showToast(
      child: _showToast(msg),
      gravity: gravity,
      toastDuration: Duration(seconds: duration),
    );
  }

  static showSuccess(BuildContext context, msg,
      {int duration = lengthShort,
      ToastGravity gravity = ToastGravity.BOTTOM}) {
    _init(context);
    _fToast?.showToast(
      child: _showToast(msg,
          icon: Icons.check,
          bgColor: KColor.kPrimaryColor,
          iconColor: Colors.white),
      gravity: gravity,
      toastDuration: Duration(seconds: duration),
    );
  }

  static showError(BuildContext context, msg,
      {int duration = lengthShort,
      ToastGravity gravity = ToastGravity.BOTTOM}) {
    _init(context);
    _fToast?.showToast(
      child: _showToast(msg,
          icon: Icons.error,
          bgColor: Colors.redAccent,
          iconColor: Colors.white),
      gravity: gravity,
      toastDuration: Duration(seconds: duration),
    );
  }

  static _showToast(String msg,
      {IconData? icon,
      Color textColor = Colors.white,
      Color iconColor = Colors.white,
      Color bgColor = Colors.black45}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: bgColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon != null
              ? Icon(
                  icon,
                  color: iconColor,
                  size: 20,
                )
              : Container(
                  height: 20,
                ),
          icon != null
              ? const SizedBox(
                  width: 10.0,
                )
              : Container(),
          Text(
            msg,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
