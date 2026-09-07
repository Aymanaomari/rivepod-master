// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$basicProviderHash() => r'11988617955aabd29fea461cf7223b582b31d0d1';

/// See also [basicProvider].
@ProviderFor(basicProvider)
final basicProviderProvider = Provider<String>.internal(
  basicProvider,
  name: r'basicProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$basicProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BasicProviderRef = ProviderRef<String>;
String _$autoDisProviderHash() => r'ddf9936293da34e87eae99370cb8663abf48e4ce';

/// See also [autoDisProvider].
@ProviderFor(autoDisProvider)
final autoDisProviderProvider = AutoDisposeProvider<String>.internal(
  autoDisProvider,
  name: r'autoDisProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$autoDisProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AutoDisProviderRef = AutoDisposeProviderRef<String>;
String _$familyProviderHash() => r'ded8db9c58bb2c15e7ee684a90f49146d8c10096';

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

/// See also [familyProvider].
@ProviderFor(familyProvider)
const familyProviderProvider = FamilyProviderFamily();

/// See also [familyProvider].
class FamilyProviderFamily extends Family<String> {
  /// See also [familyProvider].
  const FamilyProviderFamily();

  /// See also [familyProvider].
  FamilyProviderProvider call({required String name}) {
    return FamilyProviderProvider(name: name);
  }

  @override
  FamilyProviderProvider getProviderOverride(
    covariant FamilyProviderProvider provider,
  ) {
    return call(name: provider.name);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'familyProviderProvider';
}

/// See also [familyProvider].
class FamilyProviderProvider extends Provider<String> {
  /// See also [familyProvider].
  FamilyProviderProvider({required String name})
    : this._internal(
        (ref) => familyProvider(ref as FamilyProviderRef, name: name),
        from: familyProviderProvider,
        name: r'familyProviderProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$familyProviderHash,
        dependencies: FamilyProviderFamily._dependencies,
        allTransitiveDependencies:
            FamilyProviderFamily._allTransitiveDependencies,
        name: name,
      );

  FamilyProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.name,
  }) : super.internal();

  final String name;

  @override
  Override overrideWith(String Function(FamilyProviderRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: FamilyProviderProvider._internal(
        (ref) => create(ref as FamilyProviderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        name: name,
      ),
    );
  }

  @override
  ProviderElement<String> createElement() {
    return _FamilyProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FamilyProviderProvider && other.name == name;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FamilyProviderRef on ProviderRef<String> {
  /// The parameter `name` of this provider.
  String get name;
}

class _FamilyProviderProviderElement extends ProviderElement<String>
    with FamilyProviderRef {
  _FamilyProviderProviderElement(super.provider);

  @override
  String get name => (origin as FamilyProviderProvider).name;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
