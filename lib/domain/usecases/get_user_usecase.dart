import '../entities/user.dart';
import '../repositories/iuser_repository.dart';

class GetUserUseCase {
  final IUserRepository repository;

  GetUserUseCase(this.repository);

  Future<User> call(String id) async {
    return await repository.getUser(id);
  }
}
