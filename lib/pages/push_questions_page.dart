import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:search_client/config/config.dart';
import 'package:search_client/dialog/submit_question_dialog.dart';
import 'package:search_client/dialog/upload_dialog.dart';
import 'package:search_client/utils/responsive.dart';
import 'package:search_client/utils/toast_util.dart';
import 'package:search_client/widget/md_tool_menu.dart';
import 'package:search_client/widget/my_driver.dart';
import 'package:search_client/widget/submit_button.dart';

class PushQuestionsPage extends StatefulWidget {
  PushQuestionsPage({Key? key}) : super(key: key);

  @override
  State<PushQuestionsPage> createState() => _PushquestionsPageState();
}

class _PushquestionsPageState extends State<PushQuestionsPage> {
  String content = "**编辑**";

  final TextEditingController _controllerTitle = TextEditingController();
  final TextEditingController _controllerDesc =
      TextEditingController(text: "**编辑**");

  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: MyAppBar(),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding:
              const EdgeInsets.symmetric(horizontal: KSize.kDefaultPadding),
          height: KSize.kSearchBarHeight_,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: KSize.kDefaultPadding),
                height: double.infinity,
                child: _buildTitleTextField(
                    _controllerTitle, KString.one_questions_describe, 1),
              )),
              SubmitButton(
                onTap: _showSubmitDialog,
                text: KString.submit,
              ),
              const SizedBox(
                width: KSize.kDefaultPadding * 4,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://img0.baidu.com/it/u=2066313653,4278626820&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400",
                  height: KSize.kMDToolsHeight,
                  width: KSize.kMDToolsHeight,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        const MyDriver(
          height: 1,
          width: double.infinity,
        ),
        SizedBox(
          height: KSize.kMDToolsHeight,
          width: double.infinity,
          child: Responsive.isDesktop(context)
              ? DMToolMenu(
                  onClickItem: ((value) {}),
                )
              : Container(),
        ),
        const MyDriver(
          width: double.infinity,
          height: 1,
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(KSize.kDefaultPadding),
              color: KColor.kWhite,
              height: double.infinity,
              child: _buildTextField(_focusNode, _controllerDesc, "", null,
                  border: false),
            )),
            const MyDriver(
              width: 1,
              height: double.infinity,
            ),
            Responsive.isDesktop(context)
                ? Expanded(
                    child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: const EdgeInsets.all(KSize.kDefaultPadding),
                        child: _buildMD()))
                : Container()
          ],
        )),
      ],
    ));
  }

  void _showSubmitDialog() {
    showDialog(context: context, builder: (content) => SubmitQuestionsDialog());
  }

  Widget _buildMD() {
    return MarkdownWidget(
      data: content,
    );
  }

  Widget _buildTextField(FocusNode focusNode, TextEditingController controller,
      String hint, maxLines,
      {bool border = true}) {
    return TextField(
      focusNode: focusNode,
      controller: controller,
      maxLines: maxLines,
      onChanged: (text) {
        content = text;
        refresh();
      },
      keyboardType: TextInputType.multiline,
      style: const TextStyle(
          color: KColor.kDarkBlackColor,
          fontSize: 15,
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: border
            ? const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                borderSide: BorderSide(
                  color: KColor.kPrimaryColor,
                  width: 2.0,
                ),
              )
            : InputBorder.none,
        enabledBorder: border
            ? const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                borderSide: BorderSide(
                  color: KColor.kPrimaryColor,
                  width: 2.0,
                ),
              )
            : InputBorder.none,
        filled: true,
        hoverColor: KColor.kWhite,
        fillColor: KColor.kWhite,
        isCollapsed: true,
      ),
    );
  }

  Widget _buildTitleTextField(
      TextEditingController controller, String hint, maxLines,
      {bool border = true}) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      maxLength: 30,
      style: const TextStyle(
          color: KColor.kDarkBlackColor,
          fontSize: 18,
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          hintText: hint, border: InputBorder.none, counterText: ""),
    );
  }

  void refresh() {
    if (mounted && Responsive.isDesktop(context)) setState(() {});
  }
}
