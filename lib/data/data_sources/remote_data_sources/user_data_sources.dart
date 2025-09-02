import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mini_task/data/models/user_model.dart';
import 'package:mini_task/domain/entities/user_entity.dart';

class UserRemoteDataSource {
  Future<List<UserEntity>> getUsers() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),
    );

    if (response.statusCode == 200) {
      final List jsonList = jsonDecode(response.body) as List;

      return jsonList
          .map<UserEntity>((json) => UserModel.fromJson(json))
          .toList();
    } else {
      throw Exception("Failed to fetch users");
    }
  }
}
