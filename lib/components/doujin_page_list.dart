import 'package:flutter/material.dart';
import 'package:nh_android_app/components/doujin_page_image.dart';
import 'package:nh_android_app/models/page_image.dart';

class DoujinPageList extends StatelessWidget {
  final List<PageImage> pageImages;
  const DoujinPageList(this.pageImages);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: pageImages
          .map<Widget>((pageImage) => DoujinPageImage(pageImage))
          .toList(),
    );
  }
}
