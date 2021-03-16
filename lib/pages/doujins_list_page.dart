import 'package:flutter/material.dart';

class DoujinsListPage extends StatelessWidget {
  const DoujinsListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
