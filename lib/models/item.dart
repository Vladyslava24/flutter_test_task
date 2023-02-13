import 'package:flutter_test_task/models/story.dart';

class Item {
  final Story story;

  Item({required this.story});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(story: Story.fromJson(json['story']));
  }
}
