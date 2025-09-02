import 'package:mini_task/data/data_sources/remote_data_sources/user_data_sources.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<UserEntity>> getUsers() async {
    return await remoteDataSource.getUsers();
  }
}
