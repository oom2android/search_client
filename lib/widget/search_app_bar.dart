import 'package:flutter/material.dart';
import 'package:search_client/config/config.dart';
import 'package:search_client/utils/uitl.dart';

class SearchAppBar extends StatefulWidget {
  final TextEditingController controller;

  final ValueChanged<String> onSearch;
  SearchAppBar({Key? key, required this.controller, required this.onSearch})
      : super(key: key);

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: KSize.kSearchBarHeight,
      child: Container(
        height: KSize.kSearchBarHeight_,
        child: Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: KColor.kWhite,
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(width: 2, color: KColor.kPrimaryColor)),
                height: KSize.kSearchBarHeight,
                child: Row(
                  children: [
                    Responsive.isDesktop(context)
                        ? Container(
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {},
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
                        controller: widget.controller,
                        onSubmitted: (value) {
                          widget.onSearch(value);
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
                              widget
                                  .onSearch(widget.controller.text.toString());
                            },
                            child: const Icon(
                              Icons.search,
                              color: KColor.kWhite,
                            )))
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
