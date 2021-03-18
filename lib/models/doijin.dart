import 'package:nh_android_app/models/page.dart';

class Doujin {
  final int id;
  final int mediaId;
  final String title;
  final String thumbnail;
  final String cover;
  final List<Page> pages;

  Doujin(this.id, this.mediaId, this.title, this.thumbnail, this.cover,
      this.pages);

  Doujin.fromJson(Map<String, dynamic> json)
      : id = json["id"].runtimeType == String
            ? int.parse(json['id'])
            : json['id'],
        mediaId = json["media_id"].runtimeType == String
            ? int.parse(json["media_id"])
            : json["media_id"],
        title = json["title"]["english"],
        thumbnail = json["thumbnail"]["url"],
        cover = json["cover"]["url"],
        pages = json["pages"].map<Page>((page) => Page.fromJson(page)).toList();
}
