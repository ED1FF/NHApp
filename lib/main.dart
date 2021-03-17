import 'package:flutter/material.dart';
import 'package:nh_android_app/pages/doujins_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NHApp',
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(color: Colors.pink),
      ),
      home: DoujinsListPage(),
    );
  }
}
