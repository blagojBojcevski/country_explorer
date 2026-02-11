// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(countriesApiService)
final countriesApiServiceProvider = CountriesApiServiceProvider._();

final class CountriesApiServiceProvider extends $FunctionalProvider<
    CountriesApiService,
    CountriesApiService,
    CountriesApiService> with $Provider<CountriesApiService> {
  CountriesApiServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'countriesApiServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$countriesApiServiceHash();

  @$internal
  @override
  $ProviderElement<CountriesApiService> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CountriesApiService create(Ref ref) {
    return countriesApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CountriesApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CountriesApiService>(value),
    );
  }
}

String _$countriesApiServiceHash() =>
    r'cc9d670738cfb0bb24b546e8026078b73d24226c';

@ProviderFor(countriesDataSource)
final countriesDataSourceProvider = CountriesDataSourceProvider._();

final class CountriesDataSourceProvider extends $FunctionalProvider<
    CountriesDataSource,
    CountriesDataSource,
    CountriesDataSource> with $Provider<CountriesDataSource> {
  CountriesDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'countriesDataSourceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$countriesDataSourceHash();

  @$internal
  @override
  $ProviderElement<CountriesDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CountriesDataSource create(Ref ref) {
    return countriesDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CountriesDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CountriesDataSource>(value),
    );
  }
}

String _$countriesDataSourceHash() =>
    r'edafd5bc80199e5ee3509ead5d9798a6b8b565a7';

@ProviderFor(countriesRepository)
final countriesRepositoryProvider = CountriesRepositoryProvider._();

final class CountriesRepositoryProvider extends $FunctionalProvider<
    CountriesRepository,
    CountriesRepository,
    CountriesRepository> with $Provider<CountriesRepository> {
  CountriesRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'countriesRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$countriesRepositoryHash();

  @$internal
  @override
  $ProviderElement<CountriesRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CountriesRepository create(Ref ref) {
    return countriesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CountriesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CountriesRepository>(value),
    );
  }
}

String _$countriesRepositoryHash() =>
    r'bc84cc57924c44c95c1f3319f8bedc222f5edbbf';

@ProviderFor(SearchQuery)
final searchQueryProvider = SearchQueryProvider._();

final class SearchQueryProvider extends $NotifierProvider<SearchQuery, String> {
  SearchQueryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'searchQueryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$searchQueryHash();

  @$internal
  @override
  SearchQuery create() => SearchQuery();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$searchQueryHash() => r'286abcff51dc844febe02639bb2e883ccab22cfd';

abstract class _$SearchQuery extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<String, String>, String, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CountriesList)
final countriesListProvider = CountriesListProvider._();

final class CountriesListProvider
    extends $AsyncNotifierProvider<CountriesList, List<Country>> {
  CountriesListProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'countriesListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$countriesListHash();

  @$internal
  @override
  CountriesList create() => CountriesList();
}

String _$countriesListHash() => r'cf747187b4082a1697694095499cdbbd5b9b060c';

abstract class _$CountriesList extends $AsyncNotifier<List<Country>> {
  FutureOr<List<Country>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Country>>, List<Country>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Country>>, List<Country>>,
        AsyncValue<List<Country>>,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(filteredCountries)
final filteredCountriesProvider = FilteredCountriesProvider._();

final class FilteredCountriesProvider
    extends $FunctionalProvider<List<Country>, List<Country>, List<Country>>
    with $Provider<List<Country>> {
  FilteredCountriesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'filteredCountriesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filteredCountriesHash();

  @$internal
  @override
  $ProviderElement<List<Country>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Country> create(Ref ref) {
    return filteredCountries(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Country> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Country>>(value),
    );
  }
}

String _$filteredCountriesHash() => r'fd0075c4121da09892bcecb45b069679690ebdcc';

@ProviderFor(countryByCode)
final countryByCodeProvider = CountryByCodeFamily._();

final class CountryByCodeProvider
    extends $FunctionalProvider<Country?, Country?, Country?>
    with $Provider<Country?> {
  CountryByCodeProvider._(
      {required CountryByCodeFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'countryByCodeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$countryByCodeHash();

  @override
  String toString() {
    return r'countryByCodeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Country?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Country? create(Ref ref) {
    final argument = this.argument as String;
    return countryByCode(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Country? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Country?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CountryByCodeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$countryByCodeHash() => r'5755c2c95aaa2dd1465bf5a0530392adba6ac92e';

final class CountryByCodeFamily extends $Family
    with $FunctionalFamilyOverride<Country?, String> {
  CountryByCodeFamily._()
      : super(
          retry: null,
          name: r'countryByCodeProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  CountryByCodeProvider call(
    String countryCode,
  ) =>
      CountryByCodeProvider._(argument: countryCode, from: this);

  @override
  String toString() => r'countryByCodeProvider';
}
