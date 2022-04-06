import 'package:flutter/material.dart';
import 'package:search_client/config/size.dart';
import 'package:search_client/utils/responsive.dart';

class SpacerMobile extends StatelessWidget {
  const SpacerMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isMobile(context)
        ? const Spacer()
        : const Padding(
            padding: EdgeInsets.only(
                left: KSize.kDefaultPadding, right: KSize.kDefaultPadding));
  }
}
