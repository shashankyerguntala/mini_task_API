import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mini_task/data/models/image_model.dart';
import 'package:mini_task/domain/entities/image_entity.dart';

class ImageDataSources {
  Future<List<ImageEntity>> getImages() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/photos"),
    );

    if (response.statusCode == 200) {
      final List jsonList = jsonDecode(response.body) as List;

      return jsonList
          .map<ImageEntity>((json) => ImageModel.fromJson(json))
          .toList();
    } else {
      throw Exception("Failed to fetch images");
    }
  }
}
