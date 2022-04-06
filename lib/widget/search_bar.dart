import 'package:flutter/material.dart';
import 'package:search_client/utils/uitl.dart';

import '../config/config.dart';
import 'spacer_mobile.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onSearch;
  final VoidCallback onQuestion;
  const SearchBar(
      {Key? key,
      required this.controller,
      required this.onSearch,
      required this.onQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: KSize.kSearchBarHeight,
      child: Row(
        children: [
          SpacerMobile(),
          Expanded(
            flex: 3,
            child: Card(
              elevation: KSize.kDefaultPadding,
              child: Container(
                height: KSize.kSearchBarHeight,
                color: Colors.white,
                child: Row(
                  children: [
                    Responsive.isDesktop(context)
                        ? Container(
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: onQuestion,
                              child: const Text(
                                KString.questions,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: KColor.kPrimaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            height: KSize.kSearchBarHeight,
                            width: KSize.kSearchBarHeight * 2,
                          )
                        : Container(),
                    Responsive.isDesktop(context)
                        ? const SizedBox(
                            width: .5,
                            height: KSize.kSearchBarHeight -
                                KSize.kDefaultPadding * 4,
                            child: DecoratedBox(
                              decoration:
                                  BoxDecoration(color: KColor.kPrimaryColor),
                            ),
                          )
                        : Container(),
                    const SizedBox(
                      width: KSize.kDefaultPadding * 2,
                    ),
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      height: KSize.kSearchBarHeight,
                      child: TextField(
                        controller: controller,
                        onSubmitted: (value) {
                          onSearch(value);
                        },
                        maxLength: KSize.kTextFieldMaxLength,
                        style: const TextStyle(
                            fontSize: 16,
                            color: KColor.kDarkBlackColor,
                            fontWeight: FontWeight.bold),
                        decoration: const InputDecoration(
                          isCollapsed: true,
                          icon: Icon(
                            Icons.search,
                            color: KColor.kPrimaryColor,
                          ),
                          counterText: '',
                          hintText: KString.search,
                          contentPadding: EdgeInsets.only(
                              top: KSize.kDefaultPadding * 2,
                              bottom: KSize.kDefaultPadding * 2,
                              right: KSize.kDefaultPadding * 2),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                      ),
                    )),
                    Container(
                        color: KColor.kPrimaryColor,
                        width: KSize.kSearchBarHeight,
                        height: KSize.kSearchBarHeight,
                        child: TextButton(
                            onPressed: () {
                              onSearch(controller.text.toString());
                            },
                            child: const Icon(
                              Icons.search,
                              color: KColor.kWhite,
                            )))
                  ],
                ),
              ),
            ),
          ),
          SpacerMobile()
        ],
      ),
    );
  }
}
