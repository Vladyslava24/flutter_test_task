import 'package:flutter_test_task/models/content.dart';

class Image {
  final List<Content> content;

  Image({required this.content});

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      content: List<Content>.from(
        json['img'].map((e) => Content.fromJson(e)),
      ),
    );
  }
}
