// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatPageControllerHash() =>
    r'f4617518f1401fc2a4351c016db4e7eeea8be428';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ChatPageController
    extends BuildlessAutoDisposeStreamNotifier<ChatPageState> {
  late final String? code;

  Stream<ChatPageState> build({
    String? code,
  });
}

/// See also [ChatPageController].
@ProviderFor(ChatPageController)
const chatPageControllerProvider = ChatPageControllerFamily();

/// See also [ChatPageController].
class ChatPageControllerFamily extends Family<AsyncValue<ChatPageState>> {
  /// See also [ChatPageController].
  const ChatPageControllerFamily();

  /// See also [ChatPageController].
  ChatPageControllerProvider call({
    String? code,
  }) {
    return ChatPageControllerProvider(
      code: code,
    );
  }

  @override
  ChatPageControllerProvider getProviderOverride(
    covariant ChatPageControllerProvider provider,
  ) {
    return call(
      code: provider.code,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatPageControllerProvider';
}

/// See also [ChatPageController].
class ChatPageControllerProvider extends AutoDisposeStreamNotifierProviderImpl<
    ChatPageController, ChatPageState> {
  /// See also [ChatPageController].
  ChatPageControllerProvider({
    this.code,
  }) : super.internal(
          () => ChatPageController()..code = code,
          from: chatPageControllerProvider,
          name: r'chatPageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatPageControllerHash,
          dependencies: ChatPageControllerFamily._dependencies,
          allTransitiveDependencies:
              ChatPageControllerFamily._allTransitiveDependencies,
        );

  final String? code;

  @override
  bool operator ==(Object other) {
    return other is ChatPageControllerProvider && other.code == code;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, code.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Stream<ChatPageState> runNotifierBuild(
    covariant ChatPageController notifier,
  ) {
    return notifier.build(
      code: code,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
