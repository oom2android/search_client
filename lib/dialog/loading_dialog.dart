import 'package:flutter/material.dart';
import 'package:search_client/config/config.dart';

class LoadingDialog extends Dialog {
  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: SizedBox(
          width: 120.0,
          height: 120.0,
          child: Container(
            decoration: const ShapeDecoration(
              color: KColor.kWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(KSize.kDefaultPadding),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                CircularProgressIndicator(
                  color: KColor.kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
