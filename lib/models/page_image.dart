class PageImage {
  final String imageUrl;

  PageImage(this.imageUrl);

  PageImage.fromJson(Map<String, dynamic> json) : imageUrl = json["url"];
}
