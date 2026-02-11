import 'package:country_explorer/features/countries/data/models/country_dto.dart';
import 'package:country_explorer/features/countries/data/services/countries_api_service.dart';
import 'package:dio/dio.dart';


abstract class CountriesDataSource {
  Future<List<CountryDto>> getAllCountries(); 
}

class CountriesDataSourceImpl implements CountriesDataSource {
final CountriesApiService _apiService;

  CountriesDataSourceImpl(this._apiService);

  @override
Future<List<CountryDto>> getAllCountries() async {
  try {
    const fields = 'name,capital,flags,region,subregion,population,cca2,languages,flag';

    final response = await _apiService.getAllCountries(fields: fields);

    if (response.statusCode == 200 && response.data is List) {
      final List<dynamic> data = response.data as List<dynamic>;

      return data
          .map((json) => CountryDto.fromJson(json as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to load countries: ${response.statusCode}');
    }
  } on DioException catch (e) {
    throw Exception('Network error: ${e.message}');
  } catch (e) {
    throw Exception('Unexpected error: $e');
  }
}
}