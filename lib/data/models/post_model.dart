import 'package:mini_task/domain/entities/posts_entity.dart';

class PostModel extends PostsEntity {
  PostModel({required super.id, required super.title, required super.body});

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    id: json["id"] as int,
    title: json["title"] as String,
    body: json["body"] as String,
  );

  Map<String, dynamic> toJson() => {"id": id, "title": title, "body": body};
}
