// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) => _CountryDto(
      name: NameDto.fromJson(json['name'] as Map<String, dynamic>),
      capitals:
          json['capital'] == null ? [] : _capitalsFromJson(json['capital']),
      region: json['region'] as String,
      subregion: json['subregion'] as String? ?? '',
      population: (json['population'] as num).toInt(),
      flag: json['flag'] as String? ?? '',
      cca2: json['cca2'] as String,
      languages: (json['languages'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      flagPngUrl: json['flags'] == null ? '' : _flagUrlFromJson(json['flags']),
    );

Map<String, dynamic> _$CountryDtoToJson(_CountryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'capital': instance.capitals,
      'region': instance.region,
      'subregion': instance.subregion,
      'population': instance.population,
      'flag': instance.flag,
      'cca2': instance.cca2,
      'languages': instance.languages,
      'flags': instance.flagPngUrl,
    };

_NameDto _$NameDtoFromJson(Map<String, dynamic> json) => _NameDto(
      common: json['common'] as String,
      official: json['official'] as String,
    );

Map<String, dynamic> _$NameDtoToJson(_NameDto instance) => <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
    };
