class ChatPageState {
  final String chat;

  const ChatPageState({required this.chat});

  ChatPageState copyWith({String? chat}) {
    return ChatPageState(chat: chat ?? this.chat);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatPageState && other.chat == chat;
  }

  @override
  int get hashCode => chat.hashCode;
}
