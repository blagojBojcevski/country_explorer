import 'package:country_explorer/core/errors/exceptions.dart';
import 'package:country_explorer/features/countries/domain/models/country.dart';
import 'package:country_explorer/features/countries/domain/repositories/countries_repository.dart';
import 'package:country_explorer/features/countries/presentation/providers/countries_providers.dart';
import 'package:country_explorer/features/countries/presentation/screens/countries_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'countries_list_screen_test.mocks.dart';

@GenerateMocks([CountriesRepository])
void main() {
  group('CountriesListScreen Widget Tests', () {
    late MockCountriesRepository mockRepository;

    setUp(() {
      mockRepository = MockCountriesRepository();
    });

    testWidgets('should display country names when data is loaded',
        (WidgetTester tester) async {
      final mockCountries = [
        const Country(
          commonName: 'United States',
          officialName: 'United States of America',
          capitals: ['Washington, D.C.'],
          region: 'Americas',
          subregion: 'North America',
          population: 329500000,
          flagEmoji: '🇺🇸',
          countryCode: 'US',
          languages: {'eng': 'English'},
          flagPngUrl: 'https://flagcdn.com/w320/us.png',
        ),
        const Country(
          commonName: 'Canada',
          officialName: 'Canada',
          capitals: ['Ottawa'],
          region: 'Americas',
          subregion: 'North America',
          population: 38000000,
          flagEmoji: '🇨🇦',
          countryCode: 'CA',
          languages: {'eng': 'English', 'fra': 'French'},
          flagPngUrl: 'https://flagcdn.com/w320/ca.png',
        ),
      ];

      when(mockRepository.getAllCountries())
          .thenAnswer((_) async => mockCountries);

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            countriesRepositoryProvider.overrideWithValue(mockRepository),
          ],
          child: const MaterialApp(
            home: CountriesListScreen(),
          ),
        ),
      );

      await tester.pump(); 
      await tester.pump();

      expect(find.text('United States'), findsOneWidget);
      expect(find.text('Canada'), findsOneWidget);
    });

    testWidgets('should display loading indicator when loading',
        (WidgetTester tester) async {
      when(mockRepository.getAllCountries()).thenAnswer(
        (_) async => await Future.delayed(
          const Duration(seconds: 10),
          () => [],
        ),
      );

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            countriesRepositoryProvider.overrideWithValue(mockRepository),
          ],
          child: const MaterialApp(
            home: CountriesListScreen(),
          ),
        ),
      );

      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      await tester.pumpAndSettle(const Duration(seconds: 10));
    });

    testWidgets('should display error message and retry button on error',
        (WidgetTester tester) async {
      const errorMessage = 'Network error occurred';
      when(mockRepository.getAllCountries())
          .thenThrow(ServerException(errorMessage));

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            countriesRepositoryProvider.overrideWithValue(mockRepository),
          ],
          child: const MaterialApp(
            home: CountriesListScreen(),
          ),
        ),
      );

      await tester.pump(); 
      await tester.pump(); 

      expect(find.byType(Scaffold), findsOneWidget);
    });
  });
}