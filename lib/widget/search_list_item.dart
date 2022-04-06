import 'package:flutter/material.dart';
import 'package:search_client/config/color.dart';
import 'package:search_client/config/config.dart';

class SearchListItem extends StatelessWidget {
  const SearchListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0))), //设置圆角
      margin: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: KSize.kDefaultPadding * 2,
            vertical: KSize.kDefaultPadding * 2),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/ic_files.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: KSize.kDefaultPadding,
                ),
                const Text(
                  "07-Flutter综合应用 (6讲)",
                  style: TextStyle(
                      color: KColor.kDarkBlackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text("2022-03-25")
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: KSize.kDefaultPadding,
                  bottom: KSize.kDefaultPadding,
                  top: KSize.kDefaultPadding,
                  right: KSize.kDefaultPadding),
              margin: const EdgeInsets.only(
                  top: KSize.kDefaultPadding * 2,
                  bottom: KSize.kDefaultPadding * 2),
              color: KColor.kBgColor,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/ic_files.png",
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: KSize.kDefaultPadding,
                        ),
                        Text(
                          "05丨从标准模板入手，体会Flutter代码是如何运行在原生系统上的.pdf - 1.85 MB",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              color: KColor.kBodyTextColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: KSize.kDefaultPadding / 2),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/ic_files.png",
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: KSize.kDefaultPadding,
                        ),
                        Text(
                          "05丨从标准模板入手，体会Flutter代码是如何运行在原生系统上的.pdf - 1.85 MB",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              color: KColor.kBodyTextColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Text(
              "文件大小: 6.31 GB数量: 148",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: KColor.kBodyTextColor),
            )
          ],
        ),
      ),
    );
  }
}
