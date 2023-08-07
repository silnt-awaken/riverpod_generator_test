// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whatever_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$whateverControllerHash() =>
    r'5142c3e201f27da34f942fc541cb571390e4373b';

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

abstract class _$WhateverController
    extends BuildlessAutoDisposeStreamNotifier<int> {
  late final String? code;

  Stream<int> build({
    String? code,
  });
}

/// See also [WhateverController].
@ProviderFor(WhateverController)
const whateverControllerProvider = WhateverControllerFamily();

/// See also [WhateverController].
class WhateverControllerFamily extends Family<AsyncValue<int>> {
  /// See also [WhateverController].
  const WhateverControllerFamily();

  /// See also [WhateverController].
  WhateverControllerProvider call({
    String? code,
  }) {
    return WhateverControllerProvider(
      code: code,
    );
  }

  @override
  WhateverControllerProvider getProviderOverride(
    covariant WhateverControllerProvider provider,
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
  String? get name => r'whateverControllerProvider';
}

/// See also [WhateverController].
class WhateverControllerProvider
    extends AutoDisposeStreamNotifierProviderImpl<WhateverController, int> {
  /// See also [WhateverController].
  WhateverControllerProvider({
    this.code,
  }) : super.internal(
          () => WhateverController()..code = code,
          from: whateverControllerProvider,
          name: r'whateverControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$whateverControllerHash,
          dependencies: WhateverControllerFamily._dependencies,
          allTransitiveDependencies:
              WhateverControllerFamily._allTransitiveDependencies,
        );

  final String? code;

  @override
  bool operator ==(Object other) {
    return other is WhateverControllerProvider && other.code == code;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, code.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Stream<int> runNotifierBuild(
    covariant WhateverController notifier,
  ) {
    return notifier.build(
      code: code,
    );
  }
}

String _$mockWhateverControllerHash() =>
    r'b14ca122a47bed54f86022272d83e0e335949ed0';

abstract class _$MockWhateverController
    extends BuildlessAutoDisposeStreamNotifier<int> {
  late final String? code;

  Stream<int> build({
    String? code,
  });
}

/// See also [MockWhateverController].
@ProviderFor(MockWhateverController)
const mockWhateverControllerProvider = MockWhateverControllerFamily();

/// See also [MockWhateverController].
class MockWhateverControllerFamily extends Family<AsyncValue<int>> {
  /// See also [MockWhateverController].
  const MockWhateverControllerFamily();

  /// See also [MockWhateverController].
  MockWhateverControllerProvider call({
    String? code,
  }) {
    return MockWhateverControllerProvider(
      code: code,
    );
  }

  @override
  MockWhateverControllerProvider getProviderOverride(
    covariant MockWhateverControllerProvider provider,
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
  String? get name => r'mockWhateverControllerProvider';
}

/// See also [MockWhateverController].
class MockWhateverControllerProvider
    extends AutoDisposeStreamNotifierProviderImpl<MockWhateverController, int> {
  /// See also [MockWhateverController].
  MockWhateverControllerProvider({
    this.code,
  }) : super.internal(
          () => MockWhateverController()..code = code,
          from: mockWhateverControllerProvider,
          name: r'mockWhateverControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mockWhateverControllerHash,
          dependencies: MockWhateverControllerFamily._dependencies,
          allTransitiveDependencies:
              MockWhateverControllerFamily._allTransitiveDependencies,
        );

  final String? code;

  @override
  bool operator ==(Object other) {
    return other is MockWhateverControllerProvider && other.code == code;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, code.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Stream<int> runNotifierBuild(
    covariant MockWhateverController notifier,
  ) {
    return notifier.build(
      code: code,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
