import 'package:mocktail/mocktail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'whatever_controller.g.dart';

@riverpod
class WhateverController extends _$WhateverController {
  @override
  Stream<int> build({String? code}) async* {
    yield* Stream.periodic(const Duration(seconds: 1), (i) => i);
  }
}

@riverpod
class MockWhateverController extends _$WhateverController
    with Mock
    implements WhateverController {
  @override
  Stream<int> build({String? code}) async* {
    yield* Stream.periodic(const Duration(seconds: 1), (i) => i);
  }
}
