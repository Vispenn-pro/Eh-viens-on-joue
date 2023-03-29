class CatEntity {
  final String url;

  CatEntity(
      {required this.url});

  factory CatEntity.fromJson(Map<String, dynamic> json) {
    return CatEntity(url: json['url']);
  }
}
