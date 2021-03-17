class Doujin {
  final int id;
  final int mediaId;
  final String title;
  final String thumbnail;

  Doujin(this.id, this.mediaId, this.title, this.thumbnail);

  Doujin.fromJson(Map<String, dynamic> json)
      : id = int.parse(json["id"]),
        mediaId = int.parse(json["media_id"]),
        title = json["title"]["english"],
        thumbnail = json["thumbnail"]["url"];
}
