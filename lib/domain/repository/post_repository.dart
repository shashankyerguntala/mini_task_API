import 'package:mini_task/domain/entities/posts_entity.dart';

abstract class PostRepository {
  Future<List<PostsEntity>> getPost();
}
