import 'package:country_explorer/core/network/api_service.dart';
import 'package:dio/dio.dart';

class CountriesApiService {
  final ApiService _apiService;

  CountriesApiService(this._apiService);

  Future<Response> getAllCountries({String? fields}) async {
    final path = fields != null ? '/all?fields=$fields' : '/all';
    return await _apiService.get(path);
  }
}