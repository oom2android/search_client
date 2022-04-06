import 'package:flutter/material.dart';

import '../config/config.dart';

class CancleButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  const CancleButton({Key? key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: KSize.kDefaultPadding * 4,
      width: KSize.kDefaultPadding * 8,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: KColor.kPrimaryColor),
        color: KColor.kWhite,
      ),
      child: TextButton(
        child: Text(
          text ?? "",
          style: const TextStyle(color: KColor.kPrimaryColor),
        ),
        onPressed: onTap,
      ),
    );
  }
}
