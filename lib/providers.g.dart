// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nameHash() => r'7b7365aa7240cdb965337e1964ad24febd1f0d80';

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

typedef NameRef = AutoDisposeFutureProviderRef<String?>;

/// See also [name].
@ProviderFor(name)
const nameProvider = NameFamily();

/// See also [name].
class NameFamily extends Family<AsyncValue<String?>> {
  /// See also [name].
  const NameFamily();

  /// See also [name].
  NameProvider call(
    String? val,
  ) {
    return NameProvider(
      val,
    );
  }

  @override
  NameProvider getProviderOverride(
    covariant NameProvider provider,
  ) {
    return call(
      provider.val,
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
  String? get name => r'nameProvider';
}

/// See also [name].
class NameProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [name].
  NameProvider(
    this.val,
  ) : super.internal(
          (ref) => name(
            ref,
            val,
          ),
          from: nameProvider,
          name: r'nameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$nameHash,
          dependencies: NameFamily._dependencies,
          allTransitiveDependencies: NameFamily._allTransitiveDependencies,
        );

  final String? val;

  @override
  bool operator ==(Object other) {
    return other is NameProvider && other.val == val;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, val.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$cookiesHash() => r'5ce5128e80caa677e2701d334d5ffbe2be42477d';

/// See also [cookies].
@ProviderFor(cookies)
final cookiesProvider = AutoDisposeStreamProvider<int>.internal(
  cookies,
  name: r'cookiesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cookiesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CookiesRef = AutoDisposeStreamProviderRef<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
