import 'package:flutter_project_template/domain/entities/user.dart';

import '../../domain/repositories/iuser_repository.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';

class UserRepository implements IUserRepository {
  static final UserRepository _instance =
      UserRepository._internal(ApiService());

  factory UserRepository() {
    return _instance;
  }

  final ApiService apiService;

  UserRepository._internal(this.apiService);

  @override
  Future<User> getUser(String id) {
    return apiService
        .get('/users/$id')
        .then((data) => UserModel.fromJson(data) as User);
  }
}
