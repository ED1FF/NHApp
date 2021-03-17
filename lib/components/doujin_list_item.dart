import 'package:flutter/material.dart';
import 'package:nh_android_app/models/doijin.dart';

class DoujinListItem extends StatelessWidget {
  final Doujin doujin;
  const DoujinListItem(this.doujin);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: Image.network(
                  doujin.thumbnail,
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 230,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  doujin.title,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.90,
          margin: EdgeInsets.only(top: 15),
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    );
  }
}
