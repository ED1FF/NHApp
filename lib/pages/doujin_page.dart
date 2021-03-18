import 'package:flutter/material.dart';
import 'package:nh_android_app/models/doijin.dart';

class DoujinPage extends StatelessWidget {
  final Doujin doujin;
  const DoujinPage(this.doujin);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(doujin.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Image.network(doujin.cover),
              SizedBox(height: 20),
              Text(
                doujin.title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text('#${doujin.id}')
            ],
          ),
        ),
      ),
    );
  }
}
