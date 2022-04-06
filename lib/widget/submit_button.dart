import 'package:flutter/material.dart';

import '../config/config.dart';

class SubmitButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  final double width;
  final double height;
  const SubmitButton(
      {Key? key,
      this.text,
      this.onTap,
      this.width = KSize.kDefaultPadding * 8,
      this.height = KSize.kDefaultPadding * 4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KColor.kPrimaryColor,
      height: height,
      width: width,
      child: TextButton(
        child: Text(
          text ?? "",
          style: const TextStyle(color: KColor.kWhite),
        ),
        onPressed: onTap,
      ),
    );
  }
}
