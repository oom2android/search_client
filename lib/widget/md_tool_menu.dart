import 'package:flutter/material.dart';
import 'package:search_client/config/config.dart';

class DMToolMenu extends StatelessWidget {
  final ValueChanged<String>? onClickItem;
  DMToolMenu({Key? key, this.onClickItem}) : super(key: key);

  List<String> icons = [
    "assets/images/menu/ic_1.png",
    "assets/images/menu/ic_2.png",
    "assets/images/menu/ic_3.png",
    "assets/images/menu/ic_4.png",
    "assets/images/menu/ic_5.png",
    "assets/images/menu/ic_6.png",
    "assets/images/menu/ic_7.png",
    "assets/images/menu/ic_8.png",
  ];
  List<String> tooltip = [
    "标题",
    "粗体",
    "斜体",
    "引用",
    "图片",
    "代码",
    "代码块",
    "链接",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: KSize.kMDToolsMenuSize,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: icons.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(left: KSize.kDefaultPadding),
                child: _buildItem(index, icons[index], tooltip[index]));
          }),
    );
  }

  List<String> commands = [
    "###",
    "###",
    "###",
    "###",
    "###",
    "###",
    "###",
    "###",
  ];

  Widget _buildItem(int index, String src, String tooltip) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: KSize.kMDToolsHeight,
      height: KSize.kMDToolsMenuSize,
      child: IconButton(
        color: KColor.kDarkBlackColor,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: Image.asset(src),
        onPressed: () {
          if (onClickItem != null) {
            onClickItem!(commands[index]);
          }
        },
        tooltip: tooltip,
      ),
    );
  }
}
