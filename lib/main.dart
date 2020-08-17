import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/news/design/news_tab_controller.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsTabController(),
    );
  }
}
