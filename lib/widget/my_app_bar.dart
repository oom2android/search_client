import 'package:flutter/material.dart';
import 'package:search_client/config/config.dart';
import 'package:search_client/widget/spacer_mobile.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final VoidCallback? onAvararClick;
  MyAppBar({Key? key, this.onAvararClick}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(KSize.kAppBarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      elevation: KSize.kDefaultPadding,
      child: Container(
          width: double.infinity,
          height: double.infinity,
          color: KColor.kWhite,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpacerMobile(),
                Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/ic_logo.png",
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: KSize.kDefaultPadding * 2,
                        ),
                        const Text(
                          KString.logo,
                          style: TextStyle(
                              color: KColor.kDarkBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: KSize.kDefaultPadding,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: KColor.kWhite,
                              border: Border.all(
                                color: KColor.kPrimaryColor,
                                width: 1.2,
                              )),
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 4),
                          child: const Text(
                            KString.version_info,
                            style: TextStyle(
                                color: KColor.kPrimaryColor,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: widget.onAvararClick,
                          child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2)),
                              child: Image.asset("assets/images/ic_user.png")),
                        ),
                      ],
                    )),
                SpacerMobile(),
              ],
            ),
          )),
    );
  }
}
