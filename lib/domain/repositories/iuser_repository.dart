import '../entities/user.dart';

abstract class IUserRepository {
  Future<User> getUser(String id);
}
