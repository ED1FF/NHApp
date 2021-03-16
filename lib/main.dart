import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NHApp'),
        ),
        body: const Image(
          image: NetworkImage('https://i.nhentai.net/galleries/1855314/1.jpg'),
        ),
      ),
    );
  }
}
