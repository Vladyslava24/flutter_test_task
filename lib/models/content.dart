class Content {
  final int id;
  final String alt;
  final String name;
  final String focus;
  final String title;
  final String filename;
  final String copyright;
  final String? asset;

  Content({
    required this.id,
    required this.alt,
    required this.name,
    required this.focus,
    required this.title,
    required this.filename,
    required this.copyright,
    this.asset,
  });

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      id: json['id'],
      alt: json['alt'],
      name: json['name'],
      focus: json['focus'],
      title: json['title'],
      filename: json['filename'],
      copyright: json['copyright'],
      asset: json['asset'],
    );
  }
}
