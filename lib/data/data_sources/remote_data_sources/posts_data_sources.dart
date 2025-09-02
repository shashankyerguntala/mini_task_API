import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mini_task/data/models/post_model.dart';
import 'package:mini_task/domain/entities/posts_entity.dart';

class PostsDataSources {
  Future<List<PostsEntity>> getPost() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );

    if (response.statusCode == 200) {
      final List<Map<String, dynamic>> jsonList =
          List<Map<String, dynamic>>.from(jsonDecode(response.body));

      return jsonList
          .map<PostsEntity>((json) => PostModel.fromJson(json))
          .toList();
    } else {
      throw Exception("Failed to fetch posts");
    }
  }
}
