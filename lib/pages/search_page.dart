import 'package:flutter/material.dart';
import 'package:search_client/config/config.dart';
import 'package:search_client/utils/uitl.dart';
import 'package:search_client/widget/multistate/multi_state.dart';
import 'package:search_client/widget/search_app_bar.dart';
import 'package:search_client/widget/search_list_item.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin {
  String keyword = "";

  MultiState _multiState = MultiState.LOADING;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _multiState = MultiState.SUCCESS;
      });
    });
  }

  late TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map?;

    keyword = arguments == null ? "" : arguments['keyword'];
    _controller.text = keyword;

    return Scaffold(
        backgroundColor: KColor.kBgColor,
        body: MultiStateView(
          state: _multiState,
          child: Stack(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Responsive.isDesktop(context)
                        ? const Spacer()
                        : Container(),
                    Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: KSize.kDefaultPadding),
                          height: double.infinity,
                          child: ListView.builder(
                              padding: EdgeInsets.only(
                                  top: KSize.kAppBarHeight +
                                      KSize.kDefaultPadding),
                              itemCount: 30,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return SearchListItem();
                              }),
                        )),
                    Responsive.isDesktop(context)
                        ? const Spacer()
                        : Container(),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(0),
                elevation: KSize.kDefaultPadding,
                child: Container(
                  color: KColor.kWhite,
                  width: double.infinity,
                  height: KSize.kAppBarHeight,
                  child: SearchAppBar(
                    controller: _controller,
                    onSearch: (String value) {},
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
