import 'package:flutter/material.dart';
import 'package:search_client/config/config.dart';
import 'package:search_client/widget/cancle_button.dart';
import 'package:search_client/widget/my_driver.dart';
import 'package:search_client/widget/submit_button.dart';

class SubmitQuestionsDialog extends StatefulWidget {
  SubmitQuestionsDialog({Key? key}) : super(key: key);

  @override
  State<SubmitQuestionsDialog> createState() => _SubmitQuestionsDialogState();
}

class _SubmitQuestionsDialogState extends State<SubmitQuestionsDialog> {
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
            padding: EdgeInsets.only(
                bottom: KSize.kDefaultPadding,
                left: KSize.kDefaultPadding,
                right: KSize.kDefaultPadding),
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: KSize.kDefaultPadding * 2),
                child: Text(
                  KString.submit,
                  style: KStyle.textStyleBlackTitle(),
                ),
              ),
              const MyDriver(
                width: double.infinity,
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: KSize.kDefaultPadding * 2,
                    top: KSize.kDefaultPadding),
                child: Row(
                  children: [
                    Text(
                      KString.category_,
                      style: KStyle.textStyleBlack14(),
                    ),
                    Expanded(
                        child: Wrap(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: KSize.kDefaultPadding),
                          color: KColor.kBgColor1,
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: KSize.kDefaultPadding * 2,
                                  vertical: KSize.kDefaultPadding / 5),
                              child: Text(
                                '前端',
                                style: KStyle.textStyle14(
                                    color: KColor.kBodyTextColor),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: KSize.kDefaultPadding),
                          color: KColor.kBgColor1,
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: KSize.kDefaultPadding * 2,
                                  vertical: KSize.kDefaultPadding / 5),
                              child: Text(
                                '前端',
                                style: KStyle.textStyle14(
                                    color: KColor.kBodyTextColor),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: KSize.kDefaultPadding),
                          color: KColor.kBgColor1,
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: KSize.kDefaultPadding * 2,
                                  vertical: KSize.kDefaultPadding / 5),
                              child: Text(
                                '前端',
                                style: KStyle.textStyle14(
                                    color: KColor.kBodyTextColor),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: KSize.kDefaultPadding),
                          color: KColor.kBgColor1,
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: KSize.kDefaultPadding * 2,
                                  vertical: KSize.kDefaultPadding / 5),
                              child: Text(
                                '前端',
                                style: KStyle.textStyle14(
                                    color: KColor.kBodyTextColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: KSize.kDefaultPadding * 2,
                    top: KSize.kDefaultPadding),
                child: Row(
                  children: [
                    Text(
                      KString.dev_language,
                      style: KStyle.textStyleBlack14(),
                    )
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CancleButton(
                    text: KString.cancle,
                  ),
                  SizedBox(
                    width: KSize.kDefaultPadding * 2,
                  ),
                  SubmitButton(
                    text: KString.submit,
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
