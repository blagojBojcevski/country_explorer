// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NameDto {
  String get common;
  String get official;

  /// Create a copy of NameDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NameDtoCopyWith<NameDto> get copyWith =>
      _$NameDtoCopyWithImpl<NameDto>(this as NameDto, _$identity);

  /// Serializes this NameDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NameDto &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, common, official);

  @override
  String toString() {
    return 'NameDto(common: $common, official: $official)';
  }
}

/// @nodoc
abstract mixin class $NameDtoCopyWith<$Res> {
  factory $NameDtoCopyWith(NameDto value, $Res Function(NameDto) _then) =
      _$NameDtoCopyWithImpl;
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class _$NameDtoCopyWithImpl<$Res> implements $NameDtoCopyWith<$Res> {
  _$NameDtoCopyWithImpl(this._self, this._then);

  final NameDto _self;
  final $Res Function(NameDto) _then;

  /// Create a copy of NameDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_self.copyWith(
      common: null == common
          ? _self.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _self.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [NameDto].
extension NameDtoPatterns on NameDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NameDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NameDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NameDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NameDto():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NameDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NameDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String common, String official)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NameDto() when $default != null:
        return $default(_that.common, _that.official);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String common, String official) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NameDto():
        return $default(_that.common, _that.official);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String common, String official)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NameDto() when $default != null:
        return $default(_that.common, _that.official);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NameDto implements NameDto {
  const _NameDto({required this.common, required this.official});
  factory _NameDto.fromJson(Map<String, dynamic> json) =>
      _$NameDtoFromJson(json);

  @override
  final String common;
  @override
  final String official;

  /// Create a copy of NameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NameDtoCopyWith<_NameDto> get copyWith =>
      __$NameDtoCopyWithImpl<_NameDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NameDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NameDto &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, common, official);

  @override
  String toString() {
    return 'NameDto(common: $common, official: $official)';
  }
}

/// @nodoc
abstract mixin class _$NameDtoCopyWith<$Res> implements $NameDtoCopyWith<$Res> {
  factory _$NameDtoCopyWith(_NameDto value, $Res Function(_NameDto) _then) =
      __$NameDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class __$NameDtoCopyWithImpl<$Res> implements _$NameDtoCopyWith<$Res> {
  __$NameDtoCopyWithImpl(this._self, this._then);

  final _NameDto _self;
  final $Res Function(_NameDto) _then;

  /// Create a copy of NameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_NameDto(
      common: null == common
          ? _self.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _self.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
