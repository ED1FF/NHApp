import 'package:flutter/material.dart';
import 'package:nh_android_app/components/doujin_list_item.dart';
import 'package:nh_android_app/models/doijin.dart';
import 'package:nh_android_app/services/api_service.dart';

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
          child: FutureBuilder(
            future: ApiService().getDoujins(),
            builder: (context, snapshot) {
              return snapshot.hasData == false
                  ? Center(child: Text('Loading'))
                  : Column(
                      children: snapshot.data
                          .map<Widget>((doujin) =>
                              DoujinListItem(Doujin.fromJson(doujin)))
                          .toList(),
                    );
            },
          ),
        ),
      ),
    );
  }
}
