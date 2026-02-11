import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
sealed class Country with _$Country {
  const factory Country({
    required String commonName,
    required String officialName,
    required List<String> capitals,
    required String region,
    required String subregion,
    required int population,
    required String flagEmoji,     
    required String countryCode,
    required Map<String, String> languages,
    required String flagPngUrl,
  }) = _Country;
}