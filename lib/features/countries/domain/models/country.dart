import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
sealed class Country with _$Country {
  const factory Country({
    required String name,
    required String capital,
    required String region,
    required int population,
    required String flagUrl,
    required String flagAlt,
    required String code,
  }) = _Country;
}