import 'package:flutter/cupertino.dart';

class Routers {
  static void jumpPage(BuildContext context, String router, {arguments}) {
    Navigator.of(context).pushNamed(router, arguments: arguments);
  }
}
