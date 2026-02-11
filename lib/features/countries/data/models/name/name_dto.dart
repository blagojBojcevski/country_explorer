import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_dto.freezed.dart';
part 'name_dto.g.dart';

@freezed
sealed class NameDto with _$NameDto {
  const factory NameDto({
    required String common,
    required String official,
  }) = _NameDto;

  factory NameDto.fromJson(Map<String, dynamic> json) => 
      _$NameDtoFromJson(json);
}