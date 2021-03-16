import 'package:flutter/material.dart';
import 'package:nh_android_app/components/doujin_list_item.dart';
import 'package:nh_android_app/models/doijin.dart';

class DoujinsListPage extends StatelessWidget {
  const DoujinsListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('NHApp'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DoujinListItem(Doujin(3, 3, 'Test doujin',
                  'https://i.nhentai.net/galleries/1855314/1.jpg')),
              DoujinListItem(Doujin(3, 3, 'Test doujin',
                  'https://i.nhentai.net/galleries/1855314/1.jpg')),
              DoujinListItem(Doujin(3, 3, 'Test doujin',
                  'https://i.nhentai.net/galleries/1855314/1.jpg')),
              DoujinListItem(Doujin(3, 3, 'Test doujin',
                  'https://i.nhentai.net/galleries/1855314/1.jpg')),
              DoujinListItem(Doujin(3, 3, 'Test doujin',
                  'https://i.nhentai.net/galleries/1855314/1.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}
