import 'package:flutter/material.dart';
import 'package:nh_android_app/models/page_image.dart';

class DoujinPageImage extends StatelessWidget {
  final PageImage pageImage;
  const DoujinPageImage(this.pageImage);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(pageImage.imageUrl),
        SizedBox(height: 10),
      ],
    );
  }
}
