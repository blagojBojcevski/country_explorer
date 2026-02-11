import '../models/country.dart';

abstract interface class CountriesRepository {
  Future<List<Country>> getAllCountries();
}
