import 'package:flutter/material.dart';

import 'package:search_client/dialog/loading_dialog.dart';

class DialogUtil {
  static showLoadingDialog(
    BuildContext context,
  ) async {
    return await showDialog(
        context: context, builder: (context) => LoadingDialog());
  }

  static dismissDialog(BuildContext context) {
    Navigator.pop(context);
  }
}
