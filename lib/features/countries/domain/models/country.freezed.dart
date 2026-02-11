// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Country {
  String get name;
  String get capital;
  String get region;
  int get population;
  String get flagUrl;
  String get flagAlt;
  String get code;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CountryCopyWith<Country> get copyWith =>
      _$CountryCopyWithImpl<Country>(this as Country, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Country &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.capital, capital) || other.capital == capital) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl) &&
            (identical(other.flagAlt, flagAlt) || other.flagAlt == flagAlt) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, capital, region, population, flagUrl, flagAlt, code);

  @override
  String toString() {
    return 'Country(name: $name, capital: $capital, region: $region, population: $population, flagUrl: $flagUrl, flagAlt: $flagAlt, code: $code)';
  }
}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) =
      _$CountryCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String capital,
      String region,
      int population,
      String flagUrl,
      String flagAlt,
      String code});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._self, this._then);

  final Country _self;
  final $Res Function(Country) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? capital = null,
    Object? region = null,
    Object? population = null,
    Object? flagUrl = null,
    Object? flagAlt = null,
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      capital: null == capital
          ? _self.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _self.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      flagUrl: null == flagUrl
          ? _self.flagUrl
          : flagUrl // ignore: cast_nullable_to_non_nullable
              as String,
      flagAlt: null == flagAlt
          ? _self.flagAlt
          : flagAlt // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Country].
extension CountryPatterns on Country {
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
    TResult Function(_Country value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
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
    TResult Function(_Country value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country():
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
    TResult? Function(_Country value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
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
    TResult Function(String name, String capital, String region, int population,
            String flagUrl, String flagAlt, String code)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
        return $default(_that.name, _that.capital, _that.region,
            _that.population, _that.flagUrl, _that.flagAlt, _that.code);
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
    TResult Function(String name, String capital, String region, int population,
            String flagUrl, String flagAlt, String code)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country():
        return $default(_that.name, _that.capital, _that.region,
            _that.population, _that.flagUrl, _that.flagAlt, _that.code);
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
    TResult? Function(String name, String capital, String region,
            int population, String flagUrl, String flagAlt, String code)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
        return $default(_that.name, _that.capital, _that.region,
            _that.population, _that.flagUrl, _that.flagAlt, _that.code);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Country implements Country {
  const _Country(
      {required this.name,
      required this.capital,
      required this.region,
      required this.population,
      required this.flagUrl,
      required this.flagAlt,
      required this.code});

  @override
  final String name;
  @override
  final String capital;
  @override
  final String region;
  @override
  final int population;
  @override
  final String flagUrl;
  @override
  final String flagAlt;
  @override
  final String code;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Country &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.capital, capital) || other.capital == capital) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl) &&
            (identical(other.flagAlt, flagAlt) || other.flagAlt == flagAlt) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, capital, region, population, flagUrl, flagAlt, code);

  @override
  String toString() {
    return 'Country(name: $name, capital: $capital, region: $region, population: $population, flagUrl: $flagUrl, flagAlt: $flagAlt, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) =
      __$CountryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String capital,
      String region,
      int population,
      String flagUrl,
      String flagAlt,
      String code});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(this._self, this._then);

  final _Country _self;
  final $Res Function(_Country) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? capital = null,
    Object? region = null,
    Object? population = null,
    Object? flagUrl = null,
    Object? flagAlt = null,
    Object? code = null,
  }) {
    return _then(_Country(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      capital: null == capital
          ? _self.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _self.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      flagUrl: null == flagUrl
          ? _self.flagUrl
          : flagUrl // ignore: cast_nullable_to_non_nullable
              as String,
      flagAlt: null == flagAlt
          ? _self.flagAlt
          : flagAlt // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
