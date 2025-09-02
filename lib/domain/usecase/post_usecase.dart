import 'package:mini_task/domain/entities/posts_entity.dart';
import 'package:mini_task/domain/repository/post_repository.dart';

class PostUsecase {
  final PostRepository postRepository;

  PostUsecase({required this.postRepository});
  Future<List<PostsEntity>> getPost() async {
    return await postRepository.getPost();
  }
}
