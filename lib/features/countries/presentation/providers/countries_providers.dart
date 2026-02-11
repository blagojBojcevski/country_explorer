
import 'package:country_explorer/core/providers/core_providers.dart';
import 'package:country_explorer/features/countries/data/data_sources/countries_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/services/countries_api_service.dart';
import '../../data/repositories/countries_repository_impl.dart';
import '../../domain/repositories/countries_repository.dart';
import '../../domain/models/country.dart';

part 'countries_providers.g.dart';


@riverpod
CountriesApiService countriesApiService(Ref ref) {
  return CountriesApiService(ref.watch(apiServiceProvider));
}

@riverpod
CountriesDataSource countriesDataSource(Ref ref) { 
  return CountriesDataSourceImpl(
    ref.watch(countriesApiServiceProvider),
  );
}

@riverpod
CountriesRepository countriesRepository(Ref ref) {
  return CountriesRepositoryImpl(
    ref.watch(countriesDataSourceProvider),  
  );
}

@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  String build() => '';

  void update(String query) => state = query;
}

@riverpod
class CountriesList extends _$CountriesList {
  @override
  Future<List<Country>> build() async {
    final repository = ref.watch(countriesRepositoryProvider);
    return repository.getAllCountries();
  }

  Future<void> retry() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repository = ref.read(countriesRepositoryProvider);
      return repository.getAllCountries();
    });
  }
}

@riverpod
List<Country> filteredCountries(Ref ref) {
  final countriesAsync = ref.watch(countriesListProvider);
  final searchQuery = ref.watch(searchQueryProvider);

  return countriesAsync.when(
    data: (countries) {
      if (searchQuery.isEmpty) return countries;
      final query = searchQuery.toLowerCase();
      return countries
          .where((country) =>
              country.commonName.toLowerCase().contains(query))
          .toList();
    },
    loading: () => [],
    error: (_, __) => [],
  );
}

@riverpod
Country? countryByCode(Ref ref, String countryCode) {
  final countriesAsync = ref.watch(countriesListProvider);

  return countriesAsync.whenData((countries) {
    try {
      return countries.firstWhere(
        (country) => country.countryCode == countryCode,
      );
    } catch (_) {
      return null;
    }
  }).value;
}