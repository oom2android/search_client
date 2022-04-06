import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_client/http/core/http_client.dart';
import 'package:search_client/pages/push_questions_page.dart';
import 'package:search_client/pages/search_page.dart';

import 'http/core/config/http_config.dart';
import 'pages/home_page.dart';
import 'utils/log_utils.dart';

void main() {
  HttpClient().init(
      config: HttpConfig(
    baseUrl: 'http://127.0.0.1:8010/',
  ));
  LogUtil.init(isDebug: true);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // "/": (context) => SearchPage(),
        "/search": (context) => SearchPage(),
        "/push_questions": (context) => PushQuestionsPage(),
      },
      theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(
        Theme.of(context).textTheme,
      )),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
