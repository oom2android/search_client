import 'package:flutter/material.dart';

import '../config/config.dart';

class MyDriver extends StatelessWidget {
  final double width;
  final double height;
  const MyDriver({Key? key, this.width = 1, this.height = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        color: KColor.kLineColor,
      ),
    );
  }
}
