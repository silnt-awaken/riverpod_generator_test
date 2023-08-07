import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Future<String?> name(NameRef ref, String? val) async {
  if (val == null) return null;

  await Future.delayed(const Duration(seconds: 2));
  return val;
}

@riverpod
Stream<int> cookies(CookiesRef ref) async* {
  yield* Stream.periodic(const Duration(seconds: 1), (i) => i);
}
