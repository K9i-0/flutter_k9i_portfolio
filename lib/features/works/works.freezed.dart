// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'works.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Work {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get githubUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)
        flutterPackage,
    required TResult Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)
        mobileApp,
    required TResult Function(DateTime createdAt, String description,
            String appName, String? webUrl, String githubUrl)
        webApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)?
        flutterPackage,
    TResult? Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)?
        mobileApp,
    TResult? Function(DateTime createdAt, String description, String appName,
            String? webUrl, String githubUrl)?
        webApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt, String description, String packageName,
            String pubDevUrl, String githubUrl)?
        flutterPackage,
    TResult Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)?
        mobileApp,
    TResult Function(DateTime createdAt, String description, String appName,
            String? webUrl, String githubUrl)?
        webApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlutterPackageWork value) flutterPackage,
    required TResult Function(MobileAppWork value) mobileApp,
    required TResult Function(WebAppWork value) webApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlutterPackageWork value)? flutterPackage,
    TResult? Function(MobileAppWork value)? mobileApp,
    TResult? Function(WebAppWork value)? webApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlutterPackageWork value)? flutterPackage,
    TResult Function(MobileAppWork value)? mobileApp,
    TResult Function(WebAppWork value)? webApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res, Work>;
  @useResult
  $Res call({DateTime createdAt, String description, String githubUrl});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res, $Val extends Work>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? description = null,
    Object? githubUrl = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrl: null == githubUrl
          ? _value.githubUrl!
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlutterPackageWorkImplCopyWith<$Res>
    implements $WorkCopyWith<$Res> {
  factory _$$FlutterPackageWorkImplCopyWith(_$FlutterPackageWorkImpl value,
          $Res Function(_$FlutterPackageWorkImpl) then) =
      __$$FlutterPackageWorkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      String description,
      String packageName,
      String pubDevUrl,
      String githubUrl});
}

/// @nodoc
class __$$FlutterPackageWorkImplCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$FlutterPackageWorkImpl>
    implements _$$FlutterPackageWorkImplCopyWith<$Res> {
  __$$FlutterPackageWorkImplCopyWithImpl(_$FlutterPackageWorkImpl _value,
      $Res Function(_$FlutterPackageWorkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? description = null,
    Object? packageName = null,
    Object? pubDevUrl = null,
    Object? githubUrl = null,
  }) {
    return _then(_$FlutterPackageWorkImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      pubDevUrl: null == pubDevUrl
          ? _value.pubDevUrl
          : pubDevUrl // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrl: null == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FlutterPackageWorkImpl implements FlutterPackageWork {
  const _$FlutterPackageWorkImpl(
      {required this.createdAt,
      required this.description,
      required this.packageName,
      required this.pubDevUrl,
      required this.githubUrl});

  @override
  final DateTime createdAt;
  @override
  final String description;
  @override
  final String packageName;
  @override
  final String pubDevUrl;
  @override
  final String githubUrl;

  @override
  String toString() {
    return 'Work.flutterPackage(createdAt: $createdAt, description: $description, packageName: $packageName, pubDevUrl: $pubDevUrl, githubUrl: $githubUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlutterPackageWorkImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.pubDevUrl, pubDevUrl) ||
                other.pubDevUrl == pubDevUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, description, packageName, pubDevUrl, githubUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlutterPackageWorkImplCopyWith<_$FlutterPackageWorkImpl> get copyWith =>
      __$$FlutterPackageWorkImplCopyWithImpl<_$FlutterPackageWorkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)
        flutterPackage,
    required TResult Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)
        mobileApp,
    required TResult Function(DateTime createdAt, String description,
            String appName, String? webUrl, String githubUrl)
        webApp,
  }) {
    return flutterPackage(
        createdAt, description, packageName, pubDevUrl, githubUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)?
        flutterPackage,
    TResult? Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)?
        mobileApp,
    TResult? Function(DateTime createdAt, String description, String appName,
            String? webUrl, String githubUrl)?
        webApp,
  }) {
    return flutterPackage?.call(
        createdAt, description, packageName, pubDevUrl, githubUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt, String description, String packageName,
            String pubDevUrl, String githubUrl)?
        flutterPackage,
    TResult Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)?
        mobileApp,
    TResult Function(DateTime createdAt, String description, String appName,
            String? webUrl, String githubUrl)?
        webApp,
    required TResult orElse(),
  }) {
    if (flutterPackage != null) {
      return flutterPackage(
          createdAt, description, packageName, pubDevUrl, githubUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlutterPackageWork value) flutterPackage,
    required TResult Function(MobileAppWork value) mobileApp,
    required TResult Function(WebAppWork value) webApp,
  }) {
    return flutterPackage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlutterPackageWork value)? flutterPackage,
    TResult? Function(MobileAppWork value)? mobileApp,
    TResult? Function(WebAppWork value)? webApp,
  }) {
    return flutterPackage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlutterPackageWork value)? flutterPackage,
    TResult Function(MobileAppWork value)? mobileApp,
    TResult Function(WebAppWork value)? webApp,
    required TResult orElse(),
  }) {
    if (flutterPackage != null) {
      return flutterPackage(this);
    }
    return orElse();
  }
}

abstract class FlutterPackageWork implements Work {
  const factory FlutterPackageWork(
      {required final DateTime createdAt,
      required final String description,
      required final String packageName,
      required final String pubDevUrl,
      required final String githubUrl}) = _$FlutterPackageWorkImpl;

  @override
  DateTime get createdAt;
  @override
  String get description;
  String get packageName;
  String get pubDevUrl;
  @override
  String get githubUrl;
  @override
  @JsonKey(ignore: true)
  _$$FlutterPackageWorkImplCopyWith<_$FlutterPackageWorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MobileAppWorkImplCopyWith<$Res>
    implements $WorkCopyWith<$Res> {
  factory _$$MobileAppWorkImplCopyWith(
          _$MobileAppWorkImpl value, $Res Function(_$MobileAppWorkImpl) then) =
      __$$MobileAppWorkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      String description,
      AssetGenImage iconImage,
      String appName,
      String appStoreUrl,
      String googlePlayUrl,
      String? githubUrl});
}

/// @nodoc
class __$$MobileAppWorkImplCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$MobileAppWorkImpl>
    implements _$$MobileAppWorkImplCopyWith<$Res> {
  __$$MobileAppWorkImplCopyWithImpl(
      _$MobileAppWorkImpl _value, $Res Function(_$MobileAppWorkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? description = null,
    Object? iconImage = freezed,
    Object? appName = null,
    Object? appStoreUrl = null,
    Object? googlePlayUrl = null,
    Object? githubUrl = freezed,
  }) {
    return _then(_$MobileAppWorkImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconImage: freezed == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as AssetGenImage,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appStoreUrl: null == appStoreUrl
          ? _value.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String,
      googlePlayUrl: null == googlePlayUrl
          ? _value.googlePlayUrl
          : googlePlayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrl: freezed == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MobileAppWorkImpl implements MobileAppWork {
  const _$MobileAppWorkImpl(
      {required this.createdAt,
      required this.description,
      required this.iconImage,
      required this.appName,
      required this.appStoreUrl,
      required this.googlePlayUrl,
      this.githubUrl});

  @override
  final DateTime createdAt;
  @override
  final String description;
  @override
  final AssetGenImage iconImage;
  @override
  final String appName;
  @override
  final String appStoreUrl;
  @override
  final String googlePlayUrl;
  @override
  final String? githubUrl;

  @override
  String toString() {
    return 'Work.mobileApp(createdAt: $createdAt, description: $description, iconImage: $iconImage, appName: $appName, appStoreUrl: $appStoreUrl, googlePlayUrl: $googlePlayUrl, githubUrl: $githubUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileAppWorkImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.iconImage, iconImage) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.appStoreUrl, appStoreUrl) ||
                other.appStoreUrl == appStoreUrl) &&
            (identical(other.googlePlayUrl, googlePlayUrl) ||
                other.googlePlayUrl == googlePlayUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      description,
      const DeepCollectionEquality().hash(iconImage),
      appName,
      appStoreUrl,
      googlePlayUrl,
      githubUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileAppWorkImplCopyWith<_$MobileAppWorkImpl> get copyWith =>
      __$$MobileAppWorkImplCopyWithImpl<_$MobileAppWorkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)
        flutterPackage,
    required TResult Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)
        mobileApp,
    required TResult Function(DateTime createdAt, String description,
            String appName, String? webUrl, String githubUrl)
        webApp,
  }) {
    return mobileApp(createdAt, description, iconImage, appName, appStoreUrl,
        googlePlayUrl, githubUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)?
        flutterPackage,
    TResult? Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)?
        mobileApp,
    TResult? Function(DateTime createdAt, String description, String appName,
            String? webUrl, String githubUrl)?
        webApp,
  }) {
    return mobileApp?.call(createdAt, description, iconImage, appName,
        appStoreUrl, googlePlayUrl, githubUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt, String description, String packageName,
            String pubDevUrl, String githubUrl)?
        flutterPackage,
    TResult Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)?
        mobileApp,
    TResult Function(DateTime createdAt, String description, String appName,
            String? webUrl, String githubUrl)?
        webApp,
    required TResult orElse(),
  }) {
    if (mobileApp != null) {
      return mobileApp(createdAt, description, iconImage, appName, appStoreUrl,
          googlePlayUrl, githubUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlutterPackageWork value) flutterPackage,
    required TResult Function(MobileAppWork value) mobileApp,
    required TResult Function(WebAppWork value) webApp,
  }) {
    return mobileApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlutterPackageWork value)? flutterPackage,
    TResult? Function(MobileAppWork value)? mobileApp,
    TResult? Function(WebAppWork value)? webApp,
  }) {
    return mobileApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlutterPackageWork value)? flutterPackage,
    TResult Function(MobileAppWork value)? mobileApp,
    TResult Function(WebAppWork value)? webApp,
    required TResult orElse(),
  }) {
    if (mobileApp != null) {
      return mobileApp(this);
    }
    return orElse();
  }
}

abstract class MobileAppWork implements Work {
  const factory MobileAppWork(
      {required final DateTime createdAt,
      required final String description,
      required final AssetGenImage iconImage,
      required final String appName,
      required final String appStoreUrl,
      required final String googlePlayUrl,
      final String? githubUrl}) = _$MobileAppWorkImpl;

  @override
  DateTime get createdAt;
  @override
  String get description;
  AssetGenImage get iconImage;
  String get appName;
  String get appStoreUrl;
  String get googlePlayUrl;
  @override
  String? get githubUrl;
  @override
  @JsonKey(ignore: true)
  _$$MobileAppWorkImplCopyWith<_$MobileAppWorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebAppWorkImplCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$WebAppWorkImplCopyWith(
          _$WebAppWorkImpl value, $Res Function(_$WebAppWorkImpl) then) =
      __$$WebAppWorkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      String description,
      String appName,
      String? webUrl,
      String githubUrl});
}

/// @nodoc
class __$$WebAppWorkImplCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$WebAppWorkImpl>
    implements _$$WebAppWorkImplCopyWith<$Res> {
  __$$WebAppWorkImplCopyWithImpl(
      _$WebAppWorkImpl _value, $Res Function(_$WebAppWorkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? description = null,
    Object? appName = null,
    Object? webUrl = freezed,
    Object? githubUrl = null,
  }) {
    return _then(_$WebAppWorkImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      webUrl: freezed == webUrl
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: null == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WebAppWorkImpl implements WebAppWork {
  const _$WebAppWorkImpl(
      {required this.createdAt,
      required this.description,
      required this.appName,
      this.webUrl,
      required this.githubUrl});

  @override
  final DateTime createdAt;
  @override
  final String description;
  @override
  final String appName;
  @override
  final String? webUrl;
  @override
  final String githubUrl;

  @override
  String toString() {
    return 'Work.webApp(createdAt: $createdAt, description: $description, appName: $appName, webUrl: $webUrl, githubUrl: $githubUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebAppWorkImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.webUrl, webUrl) || other.webUrl == webUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, description, appName, webUrl, githubUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebAppWorkImplCopyWith<_$WebAppWorkImpl> get copyWith =>
      __$$WebAppWorkImplCopyWithImpl<_$WebAppWorkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)
        flutterPackage,
    required TResult Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)
        mobileApp,
    required TResult Function(DateTime createdAt, String description,
            String appName, String? webUrl, String githubUrl)
        webApp,
  }) {
    return webApp(createdAt, description, appName, webUrl, githubUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)?
        flutterPackage,
    TResult? Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)?
        mobileApp,
    TResult? Function(DateTime createdAt, String description, String appName,
            String? webUrl, String githubUrl)?
        webApp,
  }) {
    return webApp?.call(createdAt, description, appName, webUrl, githubUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt, String description, String packageName,
            String pubDevUrl, String githubUrl)?
        flutterPackage,
    TResult Function(
            DateTime createdAt,
            String description,
            AssetGenImage iconImage,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String? githubUrl)?
        mobileApp,
    TResult Function(DateTime createdAt, String description, String appName,
            String? webUrl, String githubUrl)?
        webApp,
    required TResult orElse(),
  }) {
    if (webApp != null) {
      return webApp(createdAt, description, appName, webUrl, githubUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlutterPackageWork value) flutterPackage,
    required TResult Function(MobileAppWork value) mobileApp,
    required TResult Function(WebAppWork value) webApp,
  }) {
    return webApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlutterPackageWork value)? flutterPackage,
    TResult? Function(MobileAppWork value)? mobileApp,
    TResult? Function(WebAppWork value)? webApp,
  }) {
    return webApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlutterPackageWork value)? flutterPackage,
    TResult Function(MobileAppWork value)? mobileApp,
    TResult Function(WebAppWork value)? webApp,
    required TResult orElse(),
  }) {
    if (webApp != null) {
      return webApp(this);
    }
    return orElse();
  }
}

abstract class WebAppWork implements Work {
  const factory WebAppWork(
      {required final DateTime createdAt,
      required final String description,
      required final String appName,
      final String? webUrl,
      required final String githubUrl}) = _$WebAppWorkImpl;

  @override
  DateTime get createdAt;
  @override
  String get description;
  String get appName;
  String? get webUrl;
  @override
  String get githubUrl;
  @override
  @JsonKey(ignore: true)
  _$$WebAppWorkImplCopyWith<_$WebAppWorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
