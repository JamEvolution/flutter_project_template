import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/app_strings.dart';
import '../../core/helpers/ui_helpers.dart';
import 'user_viewmodel.dart';

class UserView extends ConsumerWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.user),
      ),
      body: userState.when(
        data: (user) => Center(
          child: Text('User: ${user.name}'),
        ),
        loading: () => UIHelpers.loadingIndicator(),
        error: (error, stack) => UIHelpers.errorWidget(
          AppStrings.error,
          () => ref.read(userViewModelProvider.notifier).fetchUser('1'),
        ),
      ),
    );
  }
}
