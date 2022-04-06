import 'package:flutter/material.dart';

import '../config/config.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: KSize.kHeaderHeight,
      width: double.infinity,
      color: KColor.kBgColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            KString.desc,
            style: TextStyle(
                fontSize: 24,
                color: KColor.kDarkBlackColor,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
