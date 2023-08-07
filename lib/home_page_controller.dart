import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_generator_test/providers.dart';
import 'package:riverpod_generator_test/repositories.dart';

import 'home_page_state.dart';

part 'home_page_controller.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  @override
  FutureOr<HomePageState> build(String code) async {
    return Future.value(const HomePageState());
  }

  Future<String> getUser() async {
    state = const AsyncLoading();
    // ignore: coverage:ignore-start

    // here you can perform api calls, database calls,
    // or anything that the coverage tool should ignore
    // but we should cover it in a mock test by overriding the provider

    // ignore: coverage:ignore-end

    final name = await ref.read(nameProvider('').future);
    final userRepository = ref.read(userRepositoryProvider);
    final user = await userRepository.getUser();
    state = AsyncData(state.value!.copyWith(user: () => user));
    return name!;
  }
}
