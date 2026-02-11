import 'package:country_test/features/countries/data/models/name/name_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

@freezed
sealed class CountryDto with _$CountryDto {
  const factory CountryDto({
    @JsonKey(name: 'name') required NameDto name,
    @JsonKey(name: 'capital', fromJson: _capitalsFromJson, defaultValue: []) required List<String> capitals,
    required String region,
    @Default('') String subregion,
    required int population,
    @JsonKey(name: 'flag', defaultValue: '') required String flag,
    @JsonKey(name: 'cca2') required String cca2,
    @Default({}) Map<String, String> languages,
    @JsonKey(name: 'flags', fromJson: _flagUrlFromJson, defaultValue: '') required String flagPngUrl,
  }) = _CountryDto;

  factory CountryDto.fromJson(Map<String, dynamic> json) => _$CountryDtoFromJson(json);
}

@freezed
sealed class NameDto with _$NameDto {
  const factory NameDto({
    required String common,
    required String official,
  }) = _NameDto;

  factory NameDto.fromJson(Map<String, dynamic> json) => _$NameDtoFromJson(json);
}

List<String> _capitalsFromJson(dynamic value) {
  if (value == null) return [];
  if (value is List) return value.cast<String>();
  if (value is String) return [value];
  return [];
}

String _flagUrlFromJson(dynamic flags) {
  if (flags is Map<String, dynamic>) {
    return flags['png'] as String? ?? '';
  }
  return '';
}