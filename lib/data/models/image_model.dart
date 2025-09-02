import 'package:mini_task/domain/entities/image_entity.dart';

class ImageModel extends ImageEntity {
  ImageModel({
    required super.id,
    required super.title,
    required super.url,
    required super.thumbnailUrl,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
    id: json['id'] as int,
    title: json['title'] as String,
    url: json['url'] as String,
    thumbnailUrl: json['thumbnailUrl'] as String,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'url': url,
    'thumbnailUrl': thumbnailUrl,
  };
}
