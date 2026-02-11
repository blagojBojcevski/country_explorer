import '../../../../core/network/api_client.dart';
import '../models/country_dto.dart';

class CountriesApiService {
  final ApiClient _apiClient;

  CountriesApiService(this._apiClient);

  Future<List<CountryDto>> fetchAllCountries() async {
    final response = await _apiClient.dio.get('/all');
    final List data = response.data;
    return data.map((json) => CountryDto.fromJson(json)).toList();
  }
}