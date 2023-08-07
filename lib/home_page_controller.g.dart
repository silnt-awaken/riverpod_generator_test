// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homePageControllerHash() =>
    r'dea7e1d7d29e34bfcb4f1516556073a45d4788e2';

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

abstract class _$HomePageController
    extends BuildlessAutoDisposeAsyncNotifier<HomePageState> {
  late final String code;

  FutureOr<HomePageState> build(
    String code,
  );
}

/// See also [HomePageController].
@ProviderFor(HomePageController)
const homePageControllerProvider = HomePageControllerFamily();

/// See also [HomePageController].
class HomePageControllerFamily extends Family<AsyncValue<HomePageState>> {
  /// See also [HomePageController].
  const HomePageControllerFamily();

  /// See also [HomePageController].
  HomePageControllerProvider call(
    String code,
  ) {
    return HomePageControllerProvider(
      code,
    );
  }

  @override
  HomePageControllerProvider getProviderOverride(
    covariant HomePageControllerProvider provider,
  ) {
    return call(
      provider.code,
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
  String? get name => r'homePageControllerProvider';
}

/// See also [HomePageController].
class HomePageControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    HomePageController, HomePageState> {
  /// See also [HomePageController].
  HomePageControllerProvider(
    this.code,
  ) : super.internal(
          () => HomePageController()..code = code,
          from: homePageControllerProvider,
          name: r'homePageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homePageControllerHash,
          dependencies: HomePageControllerFamily._dependencies,
          allTransitiveDependencies:
              HomePageControllerFamily._allTransitiveDependencies,
        );

  final String code;

  @override
  bool operator ==(Object other) {
    return other is HomePageControllerProvider && other.code == code;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, code.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<HomePageState> runNotifierBuild(
    covariant HomePageController notifier,
  ) {
    return notifier.build(
      code,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
