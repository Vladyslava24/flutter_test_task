import 'dart:convert';

import 'package:flutter_test_task/models/item.dart';
import 'package:http/http.dart' as http;

class ImagesApi {
  Future<List<String>> fetch() async {
    final http.Response response = await http.get(Uri.parse(
        'https://api.storyblok.com/v2/cdn/stories/marketfood?version=draft&token=YX1dC80Z9U5IupBCCIbiRgtt&cv=1664543171'));
    final json = jsonDecode(response.body);
    return Item.fromJson(json).story.image.content.map((e) => e.filename).toList();
  }
}
