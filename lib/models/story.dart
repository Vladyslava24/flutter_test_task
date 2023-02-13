import 'package:flutter_test_task/models/image.dart';

class Story {
  final int id;
  final String? name;
  final String? uuid;
  final Image image;
  final String? createdAt;
  final String? publishedAt;
  final String? uid;
  final String? body;
  final String? component;
  final String? description;
  final dynamic editable;
  final String? slug;
  final String? fullSlug;
  final String? sortByDate;
  final int position;
  final List? tagList;
  final bool? isStartpage;
  final String? parentId;

  Story({
    required this.id,
    required this.name,
    required this.uuid,
    required this.image,
    required this.createdAt,
    this.publishedAt,
    required this.uid,
    required this.body,
    required this.component,
    required this.description,
    required this.editable,
    required this.fullSlug,
    required this.slug,
    this.sortByDate,
    required this.position,
    required this.tagList,
    this.isStartpage,
    this.parentId,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      id: json['id'],
      name: json['name'],
      uuid: json['uuid'],
      image: Image.fromJson(json['content']),
      createdAt: json['created_at'],
      publishedAt: json['published_at'],
      uid: json['_uid'],
      body: json['body'],
      component: json['component'],
      description: json['description'],
      editable: json['_editable'],
      slug: json['slug'],
      fullSlug: json['full_slug'],
      sortByDate: json['sort_by_date'],
      position: json['position'],
      tagList: json['tag_list'],
      isStartpage: json['is_startpage'],
      parentId: json['parent_id'],
    );
  }
}
