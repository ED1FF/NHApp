class Doujin {
  final int id;
  final int mediaId;
  final String title;
  final String thumbnail;

  Doujin(this.id, this.mediaId, this.title, this.thumbnail);

  Doujin.fromJson(Map<String, dynamic> json)
      : id = json["id"].runtimeType == String
            ? int.parse(json['id'])
            : json['id'],
        mediaId = json["media_id"].runtimeType == String
            ? int.parse(json["media_id"])
            : json["media_id"],
        title = json["title"]["english"],
        thumbnail = json["thumbnail"]["url"];
}
