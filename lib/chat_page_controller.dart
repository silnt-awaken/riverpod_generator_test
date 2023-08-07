import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'chat_page_state.dart';

part 'chat_page_controller.g.dart';

@riverpod
class ChatPageController extends _$ChatPageController {
  @override
  Stream<ChatPageState> build({String? code}) async* {
    state = const AsyncLoading();
    final chatStream =
        Stream.periodic(const Duration(seconds: 1), (i) => 'Chat $i');

    yield* chatStream.map((chat) {
      if (state.value == null) return ChatPageState(chat: chat);
      state = AsyncData(state.value!.copyWith(chat: chat));
      return state.value!;
    });
  }
}
