import 'package:country_explorer/features/countries/data/data_source/countries_data_source.dart';
import 'package:country_explorer/features/countries/data/models/country_dto.dart';
import 'package:country_explorer/features/countries/domain/models/country.dart';
import 'package:country_explorer/features/countries/domain/repositories/countries_repository.dart';

class CountriesRepositoryImpl implements CountriesRepository {
  final CountriesDataSource _dataSource;

  CountriesRepositoryImpl(this._dataSource);

  @override
  Future<List<Country>> getAllCountries() async {
    try {
      final dtos = await _dataSource.getAllCountries();

      return dtos.map((dto) => dto.toDomain()).toList();
    } catch (e) {
      rethrow;
    }
  }
}

extension CountryDtoMapper on CountryDto {
  Country toDomain() {
    return Country(
      commonName: name.common,
      officialName: name.official,
      capitals: capitals,
      region: region,
      subregion: subregion,
      population: population,
      flagEmoji: flag,              
      countryCode: cca2,
      languages: languages,
      flagPngUrl: flagPngUrl,      
    );
  }
}