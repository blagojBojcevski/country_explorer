import 'package:country_explorer/core/errors/exceptions.dart';
import 'package:country_explorer/core/network/api_service.dart';
import 'package:country_explorer/features/countries/data/data_sources/countries_data_source.dart';
import 'package:country_explorer/features/countries/data/services/countries_api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// Generate mocks with: flutter pub run build_runner build
@GenerateMocks([Dio])
import 'countries_data_source_test.mocks.dart';

void main() {
  group('CountriesDataSource', () {
    late MockDio mockDio;
    late CountriesApiService apiService;
    late CountriesDataSourceImpl dataSource;

    setUp(() {
      mockDio = MockDio();
      final baseApiService = ApiService(mockDio);
      apiService = CountriesApiService(baseApiService);
      dataSource = CountriesDataSourceImpl(apiService);
    });

    test('should parse JSON response into Country models', () async {
      // Arrange
      final jsonResponse = [
        {
          'name': {
            'common': 'United States',
            'official': 'United States of America',
          },
          'capital': ['Washington, D.C.'],
          'region': 'Americas',
          'subregion': 'North America',
          'population': 329500000,
          'flag': '🇺🇸',
          'cca2': 'US',
          'languages': {
            'eng': 'English',
          },
          'flags': {
            'png': 'https://flagcdn.com/w320/us.png',
          },
        },
        {
          'name': {
            'common': 'Canada',
            'official': 'Canada',
          },
          'capital': ['Ottawa'],
          'region': 'Americas',
          'subregion': 'North America',
          'population': 38000000,
          'flag': '🇨🇦',
          'cca2': 'CA',
          'languages': {
            'eng': 'English',
            'fra': 'French',
          },
          'flags': {
            'png': 'https://flagcdn.com/w320/ca.png',
          },
        },
      ];

      final fields =
          'name,capital,flags,region,subregion,population,cca2,languages,flag';

      when(mockDio.get('/all?fields=$fields')).thenAnswer(
        (_) async => Response(
          data: jsonResponse,
          statusCode: 200,
          requestOptions: RequestOptions(path: '/all?fields=$fields'),
        ),
      );

      // Act
      final result = await dataSource.getAllCountries();

      // Assert
      expect(result.length, 2);
      expect(result[0].name.common, 'United States');
      expect(result[0].name.official, 'United States of America');
      expect(result[0].capitals, ['Washington, D.C.']);
      expect(result[0].region, 'Americas');
      expect(result[0].subregion, 'North America');
      expect(result[0].population, 329500000);
      expect(result[0].flag, '🇺🇸');
      expect(result[0].cca2, 'US');
      expect(result[0].languages['eng'], 'English');

      expect(result[1].name.common, 'Canada');
      expect(result[1].languages['eng'], 'English');
      expect(result[1].languages['fra'], 'French');

      verify(mockDio.get('/all?fields=$fields')).called(1);
    });

    test('should throw ServerException on network error', () async {
      // Arrange
      final fields =
          'name,capital,flags,region,subregion,population,cca2,languages,flag';

      when(mockDio.get('/all?fields=$fields')).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: '/all'),
          message: 'Network error',
        ),
      );

      // Act & Assert
      expect(
        () => dataSource.getAllCountries(),
        throwsA(isA<ServerException>()),
      );
    });

    test('should throw ServerException on invalid response', () async {
      // Arrange
      final fields =
          'name,capital,flags,region,subregion,population,cca2,languages,flag';

      when(mockDio.get('/all?fields=$fields')).thenAnswer(
        (_) async => Response(
          data: null,
          statusCode: 500,
          requestOptions: RequestOptions(path: '/all?fields=$fields'),
        ),
      );

      // Act & Assert
      expect(
        () => dataSource.getAllCountries(),
        throwsA(isA<ServerException>()),
      );
    });
  });
}