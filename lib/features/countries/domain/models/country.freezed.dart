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
  String get commonName;
  String get officialName;
  List<String> get capitals;
  String get region;
  String get subregion;
  int get population;
  String get flagEmoji;
  String get countryCode;
  Map<String, String> get languages;
  String get flagPngUrl;

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
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            (identical(other.officialName, officialName) ||
                other.officialName == officialName) &&
            const DeepCollectionEquality().equals(other.capitals, capitals) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.subregion, subregion) ||
                other.subregion == subregion) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.flagEmoji, flagEmoji) ||
                other.flagEmoji == flagEmoji) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            const DeepCollectionEquality().equals(other.languages, languages) &&
            (identical(other.flagPngUrl, flagPngUrl) ||
                other.flagPngUrl == flagPngUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      commonName,
      officialName,
      const DeepCollectionEquality().hash(capitals),
      region,
      subregion,
      population,
      flagEmoji,
      countryCode,
      const DeepCollectionEquality().hash(languages),
      flagPngUrl);

  @override
  String toString() {
    return 'Country(commonName: $commonName, officialName: $officialName, capitals: $capitals, region: $region, subregion: $subregion, population: $population, flagEmoji: $flagEmoji, countryCode: $countryCode, languages: $languages, flagPngUrl: $flagPngUrl)';
  }
}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) =
      _$CountryCopyWithImpl;
  @useResult
  $Res call(
      {String commonName,
      String officialName,
      List<String> capitals,
      String region,
      String subregion,
      int population,
      String flagEmoji,
      String countryCode,
      Map<String, String> languages,
      String flagPngUrl});
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
    Object? commonName = null,
    Object? officialName = null,
    Object? capitals = null,
    Object? region = null,
    Object? subregion = null,
    Object? population = null,
    Object? flagEmoji = null,
    Object? countryCode = null,
    Object? languages = null,
    Object? flagPngUrl = null,
  }) {
    return _then(_self.copyWith(
      commonName: null == commonName
          ? _self.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      officialName: null == officialName
          ? _self.officialName
          : officialName // ignore: cast_nullable_to_non_nullable
              as String,
      capitals: null == capitals
          ? _self.capitals
          : capitals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      region: null == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      subregion: null == subregion
          ? _self.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _self.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      flagEmoji: null == flagEmoji
          ? _self.flagEmoji
          : flagEmoji // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _self.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      flagPngUrl: null == flagPngUrl
          ? _self.flagPngUrl
          : flagPngUrl // ignore: cast_nullable_to_non_nullable
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
    TResult Function(
            String commonName,
            String officialName,
            List<String> capitals,
            String region,
            String subregion,
            int population,
            String flagEmoji,
            String countryCode,
            Map<String, String> languages,
            String flagPngUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
        return $default(
            _that.commonName,
            _that.officialName,
            _that.capitals,
            _that.region,
            _that.subregion,
            _that.population,
            _that.flagEmoji,
            _that.countryCode,
            _that.languages,
            _that.flagPngUrl);
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
    TResult Function(
            String commonName,
            String officialName,
            List<String> capitals,
            String region,
            String subregion,
            int population,
            String flagEmoji,
            String countryCode,
            Map<String, String> languages,
            String flagPngUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country():
        return $default(
            _that.commonName,
            _that.officialName,
            _that.capitals,
            _that.region,
            _that.subregion,
            _that.population,
            _that.flagEmoji,
            _that.countryCode,
            _that.languages,
            _that.flagPngUrl);
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
    TResult? Function(
            String commonName,
            String officialName,
            List<String> capitals,
            String region,
            String subregion,
            int population,
            String flagEmoji,
            String countryCode,
            Map<String, String> languages,
            String flagPngUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
        return $default(
            _that.commonName,
            _that.officialName,
            _that.capitals,
            _that.region,
            _that.subregion,
            _that.population,
            _that.flagEmoji,
            _that.countryCode,
            _that.languages,
            _that.flagPngUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Country implements Country {
  const _Country(
      {required this.commonName,
      required this.officialName,
      required final List<String> capitals,
      required this.region,
      required this.subregion,
      required this.population,
      required this.flagEmoji,
      required this.countryCode,
      required final Map<String, String> languages,
      required this.flagPngUrl})
      : _capitals = capitals,
        _languages = languages;

  @override
  final String commonName;
  @override
  final String officialName;
  final List<String> _capitals;
  @override
  List<String> get capitals {
    if (_capitals is EqualUnmodifiableListView) return _capitals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_capitals);
  }

  @override
  final String region;
  @override
  final String subregion;
  @override
  final int population;
  @override
  final String flagEmoji;
  @override
  final String countryCode;
  final Map<String, String> _languages;
  @override
  Map<String, String> get languages {
    if (_languages is EqualUnmodifiableMapView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_languages);
  }

  @override
  final String flagPngUrl;

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
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            (identical(other.officialName, officialName) ||
                other.officialName == officialName) &&
            const DeepCollectionEquality().equals(other._capitals, _capitals) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.subregion, subregion) ||
                other.subregion == subregion) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.flagEmoji, flagEmoji) ||
                other.flagEmoji == flagEmoji) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.flagPngUrl, flagPngUrl) ||
                other.flagPngUrl == flagPngUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      commonName,
      officialName,
      const DeepCollectionEquality().hash(_capitals),
      region,
      subregion,
      population,
      flagEmoji,
      countryCode,
      const DeepCollectionEquality().hash(_languages),
      flagPngUrl);

  @override
  String toString() {
    return 'Country(commonName: $commonName, officialName: $officialName, capitals: $capitals, region: $region, subregion: $subregion, population: $population, flagEmoji: $flagEmoji, countryCode: $countryCode, languages: $languages, flagPngUrl: $flagPngUrl)';
  }
}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) =
      __$CountryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String commonName,
      String officialName,
      List<String> capitals,
      String region,
      String subregion,
      int population,
      String flagEmoji,
      String countryCode,
      Map<String, String> languages,
      String flagPngUrl});
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
    Object? commonName = null,
    Object? officialName = null,
    Object? capitals = null,
    Object? region = null,
    Object? subregion = null,
    Object? population = null,
    Object? flagEmoji = null,
    Object? countryCode = null,
    Object? languages = null,
    Object? flagPngUrl = null,
  }) {
    return _then(_Country(
      commonName: null == commonName
          ? _self.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      officialName: null == officialName
          ? _self.officialName
          : officialName // ignore: cast_nullable_to_non_nullable
              as String,
      capitals: null == capitals
          ? _self._capitals
          : capitals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      region: null == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      subregion: null == subregion
          ? _self.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _self.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      flagEmoji: null == flagEmoji
          ? _self.flagEmoji
          : flagEmoji // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _self._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      flagPngUrl: null == flagPngUrl
          ? _self.flagPngUrl
          : flagPngUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
