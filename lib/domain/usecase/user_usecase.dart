import '../repository/user_repository.dart';
import '../entities/user_entity.dart';

class GetUsersUseCase {
  final UserRepository repository;

  GetUsersUseCase(this.repository);

  Future<List<UserEntity>> call() async {
    return await repository.getUsers();
  }
}
