import 'package:country_explorer/features/countries/presentation/screens/countries_list_screen.dart';
import 'package:country_explorer/features/countries/presentation/screens/country_details_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CountriesListScreen(),
    ),
    GoRoute(
      path: '/country/:countryCode',
      builder: (context, state) {
        final countryCode = state.pathParameters['countryCode']!;
        return CountryDetailScreen(countryCode: countryCode);
      },
    ),
  ],
);
