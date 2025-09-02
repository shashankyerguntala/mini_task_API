import 'package:mini_task/data/data_sources/remote_data_sources/posts_data_sources.dart';
import 'package:mini_task/domain/entities/posts_entity.dart';
import 'package:mini_task/domain/repository/post_repository.dart';

class PostRepoImpl extends PostRepository {
  final PostsDataSources postsDataSources;

  PostRepoImpl({required this.postsDataSources});
  @override
  Future<List<PostsEntity>> getPost() async {
    return await postsDataSources.getPost();
  }
}
