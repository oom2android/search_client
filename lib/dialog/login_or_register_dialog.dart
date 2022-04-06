import 'package:flutter/material.dart';
import 'package:search_client/config/color.dart';
import 'package:search_client/config/config.dart';
import 'package:search_client/dialog/dialog_util.dart';
import 'package:search_client/widget/submit_button.dart';

class LoginOrRegisterDialog extends StatefulWidget {
  LoginOrRegisterDialog({Key? key}) : super(key: key);

  @override
  State<LoginOrRegisterDialog> createState() => _LoginOrRegisterDialogState();
}

class _LoginOrRegisterDialogState extends State<LoginOrRegisterDialog> {
  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 2;
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: SizedBox(
          width: scale,
          height: KSize.kDialogHeight,
          child: Container(
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.network(
                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202103%2F23%2F20210323093133_19caf.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651372398&t=abc5e4a5e9aedb88039e9c29c56a76ec",
                      fit: BoxFit.cover,
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: KSize.kDefaultPadding * 2),
                    color: KColor.kWhite,
                    child: Column(
                      children: [
                        Spacer(),
                        const Text(
                          KString.login,
                          style: TextStyle(
                              color: KColor.kBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Spacer(),
                        _buildTextField(
                            TextEditingController(), KString.input_account),
                        Spacer(),
                        _buildTextField(
                            TextEditingController(), KString.input_password),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: KSize.kDefaultPadding),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                KString.forgot_password,
                                style: TextStyle(
                                    color: KColor.kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: double.infinity,
                          height: KSize.kMDToolsHeight,
                          color: KColor.kPrimaryColor,
                          child: TextButton(
                            child: const Text(
                              KString.login,
                              style: TextStyle(
                                  color: KColor.kWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        // Spacer(),
                        // Row(
                        //   children: [
                        //     Container(
                        //         alignment: Alignment.center,
                        //         width: KSize.kWXButtonWidth,
                        //         height: KSize.kMDToolsHeight,
                        //         color: KColor.kWXColor,
                        //         child: Row(
                        //           mainAxisSize: MainAxisSize.min,
                        //           children: [
                        //             Text(
                        //               KString.wx_login,
                        //               style: TextStyle(
                        //                   fontWeight: FontWeight.bold,
                        //                   fontSize: 14,
                        //                   color: KColor.kWhite),
                        //             ),
                        //           ],
                        //         )),
                        //   ],
                        // ),
                        Spacer(),
                        Text(
                          "继续即代表您同意并遵守",
                          style: KStyle.textStyleBlack12(),
                        ),
                        const SizedBox(
                          height: KSize.kDefaultPadding / 2,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "用户协议", style: KStyle.textStyleBlue12()),
                          TextSpan(
                              text: " 和 ", style: KStyle.textStyleBlack12()),
                          TextSpan(
                              text: "隐私政策", style: KStyle.textStyleBlue12()),
                        ])),
                        Spacer(),
                      ],
                    ),
                  )),
                  const SizedBox(
                    width: KSize.kDefaultPadding,
                  ),
                  IconButton(
                    icon: Image.asset("assets/images/ic_cancle.png"),
                    onPressed: () {
                      DialogUtil.dismissDialog(context);
                    },
                    color: KColor.kWhite,
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String hint,
  ) {
    return TextField(
      controller: controller,
      maxLines: 1,
      style: const TextStyle(
          color: KColor.kDarkBlackColor,
          fontSize: 15,
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
          borderSide: BorderSide(
            color: KColor.kPrimaryColor,
            width: 2.0,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
          borderSide: BorderSide(
            color: KColor.kPrimaryColor,
            width: 2.0,
          ),
        ),
        fillColor: KColor.kWhite,
        hoverColor: KColor.kWhite,
        filled: true,
        isCollapsed: true,
        contentPadding: const EdgeInsets.symmetric(
            horizontal: KSize.kDefaultPadding * 2,
            vertical: KSize.kDefaultPadding * 1.5),
      ),
    );
  }
}
