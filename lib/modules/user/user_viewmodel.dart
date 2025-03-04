import 'package:flutter_project_template/data/repositories/user_repository.dart';
import 'package:flutter_project_template/domain/repositories/iuser_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/user.dart';
import '../../domain/usecases/get_user_usecase.dart';

class UserViewModel extends StateNotifier<AsyncValue<User>> {
  final GetUserUseCase getUserUseCase;

  UserViewModel(this.getUserUseCase) : super(const AsyncValue.loading());

  Future<void> fetchUser(String id) async {
    try {
      final user = await getUserUseCase(id);
      state = AsyncValue.data(user);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

final userViewModelProvider =
    StateNotifierProvider<UserViewModel, AsyncValue<User>>((ref) {
  final getUserUseCase = ref.watch(getUserUseCaseProvider);
  return UserViewModel(getUserUseCase);
});

final getUserUseCaseProvider = Provider<GetUserUseCase>((ref) {
  final repository = ref.watch(userRepositoryProvider);
  return GetUserUseCase(repository);
});

final userRepositoryProvider = Provider<IUserRepository>((ref) {
  return UserRepository();
});
