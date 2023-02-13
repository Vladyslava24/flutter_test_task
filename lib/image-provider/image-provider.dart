import 'package:flutter_test_task/api/images-api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final imageProvider = FutureProvider<List<String>>((ref) async {
  final imagesApi = ImagesApi();
  return imagesApi.fetch();
});
