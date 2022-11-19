class SusponsersModel {
  String? name;
  String? url;
  String? ad_media;

  SusponsersModel(
  {  this.url, this.name, this.ad_media}
      );

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'url': this.url,
      'ad_media': this.ad_media,
    };
  }

  factory SusponsersModel.fromMap(Map<String, dynamic> map) {
    return SusponsersModel(
      name: map['name'] ?? "",
      url: map['url'] ?? "",
      ad_media: map['ad_media'] ?? "",
    );
  }
}