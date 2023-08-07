import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_generator_test/models.dart';
import 'package:riverpod_generator_test/sample.dart';

part 'repositories.g.dart';

class UserRepository {
  Future<User> getUser() async {
    await Future.delayed(const Duration(seconds: 2));
    return user;
  }
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepository();
}
