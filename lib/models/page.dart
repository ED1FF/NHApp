class Page {
  final String imageUrl;

  Page(this.imageUrl);

  Page.fromJson(Map<String, dynamic> json) : imageUrl = json["url"];
}
