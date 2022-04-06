import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:search_client/apis/api.dart';
import 'package:search_client/dialog/dialog_util.dart';
import 'package:search_client/dialog/login_or_register_dialog.dart';
import 'package:search_client/http/core/http_client.dart';
import 'package:search_client/utils/router.dart';

import '../config/config.dart';
import '../utils/uitl.dart';
import '../widget/header.dart';
import '../widget/my_app_bar.dart';
import '../widget/search_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          onAvararClick: () {
            _showLoginDialog();
          },
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        const Header(),
                        Expanded(
                            child: Container(
                          color: KColor.kWhite,
                        ))
                      ],
                    ),
                    Positioned(
                        top: (KSize.kHeaderHeight -
                            (KSize.kSearchBarHeight / 2.0)),
                        left: 0,
                        right: 0,
                        child: SearchBar(
                            controller: _controller,
                            onQuestion: _jumpPushQuestion,
                            onSearch: (value) {
                              _controller.text = "";
                              _jumpSearchPage(value);
                            }))
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 1000,
                width: double.infinity,
                color: Colors.red,
              ),
            )
          ],
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showLoginDialog() {
    showDialog(context: context, builder: (context) => LoginOrRegisterDialog());
  }

  void _jumpPushQuestion() {
    Routers.jumpPage(context, "/push_questions");
    // showDialog(
    //     context: context,
    //     builder: (context) => PushQuestionsDialog(
    //           onSubmit: (String value) {
    //             DialogUtil.dismissDialog(context);
    //             _submit(value);
    //           },
    //         ));
  }

  void _submit(value) {
    if (value.isNotEmpty) {
      DialogUtil.showLoadingDialog(context);

      HttpClient().post(
          data: {"urls": value},
          url: Api.UploadResApi,
          successCallback: (data) {
            DialogUtil.dismissDialog(context);
            ToastUtil.showSuccess(context, data);
          },
          errorCallback: (code, msg) {
            DialogUtil.dismissDialog(context);
            ToastUtil.showSuccess(context, msg);
          });
    }
  }

  void _jumpSearchPage(String keyword) {
    if (keyword.isEmpty) {
      ToastUtil.showSuccess(context, KString.search_empty,
          gravity: ToastGravity.CENTER);
      return;
    }

    Routers.jumpPage(context, "/search", arguments: {"keyword": keyword});
  }
}
