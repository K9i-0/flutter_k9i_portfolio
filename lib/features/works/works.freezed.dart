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
  String get githubUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)
        flutterPackage,
    required TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)
        mobileApp,
    required TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)
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
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)?
        mobileApp,
    TResult? Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)?
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
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)?
        mobileApp,
    TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)?
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
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlutterPackageWorkCopyWith<$Res>
    implements $WorkCopyWith<$Res> {
  factory _$$FlutterPackageWorkCopyWith(_$FlutterPackageWork value,
          $Res Function(_$FlutterPackageWork) then) =
      __$$FlutterPackageWorkCopyWithImpl<$Res>;
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
class __$$FlutterPackageWorkCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$FlutterPackageWork>
    implements _$$FlutterPackageWorkCopyWith<$Res> {
  __$$FlutterPackageWorkCopyWithImpl(
      _$FlutterPackageWork _value, $Res Function(_$FlutterPackageWork) _then)
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
    return _then(_$FlutterPackageWork(
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

class _$FlutterPackageWork implements FlutterPackageWork {
  const _$FlutterPackageWork(
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
            other is _$FlutterPackageWork &&
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
  _$$FlutterPackageWorkCopyWith<_$FlutterPackageWork> get copyWith =>
      __$$FlutterPackageWorkCopyWithImpl<_$FlutterPackageWork>(
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
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)
        mobileApp,
    required TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)
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
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)?
        mobileApp,
    TResult? Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)?
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
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)?
        mobileApp,
    TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)?
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
      required final String githubUrl}) = _$FlutterPackageWork;

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
  _$$FlutterPackageWorkCopyWith<_$FlutterPackageWork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MobileAppWorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$MobileAppWorkCopyWith(
          _$MobileAppWork value, $Res Function(_$MobileAppWork) then) =
      __$$MobileAppWorkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      String description,
      String iconImagePath,
      String appName,
      String appStoreUrl,
      String googlePlayUrl,
      String githubUrl});
}

/// @nodoc
class __$$MobileAppWorkCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$MobileAppWork>
    implements _$$MobileAppWorkCopyWith<$Res> {
  __$$MobileAppWorkCopyWithImpl(
      _$MobileAppWork _value, $Res Function(_$MobileAppWork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? description = null,
    Object? iconImagePath = null,
    Object? appName = null,
    Object? appStoreUrl = null,
    Object? googlePlayUrl = null,
    Object? githubUrl = null,
  }) {
    return _then(_$MobileAppWork(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconImagePath: null == iconImagePath
          ? _value.iconImagePath
          : iconImagePath // ignore: cast_nullable_to_non_nullable
              as String,
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
      githubUrl: null == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MobileAppWork implements MobileAppWork {
  const _$MobileAppWork(
      {required this.createdAt,
      required this.description,
      required this.iconImagePath,
      required this.appName,
      required this.appStoreUrl,
      required this.googlePlayUrl,
      required this.githubUrl});

  @override
  final DateTime createdAt;
  @override
  final String description;
  @override
  final String iconImagePath;
  @override
  final String appName;
  @override
  final String appStoreUrl;
  @override
  final String googlePlayUrl;
  @override
  final String githubUrl;

  @override
  String toString() {
    return 'Work.mobileApp(createdAt: $createdAt, description: $description, iconImagePath: $iconImagePath, appName: $appName, appStoreUrl: $appStoreUrl, googlePlayUrl: $googlePlayUrl, githubUrl: $githubUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileAppWork &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconImagePath, iconImagePath) ||
                other.iconImagePath == iconImagePath) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.appStoreUrl, appStoreUrl) ||
                other.appStoreUrl == appStoreUrl) &&
            (identical(other.googlePlayUrl, googlePlayUrl) ||
                other.googlePlayUrl == googlePlayUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt, description,
      iconImagePath, appName, appStoreUrl, googlePlayUrl, githubUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileAppWorkCopyWith<_$MobileAppWork> get copyWith =>
      __$$MobileAppWorkCopyWithImpl<_$MobileAppWork>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)
        flutterPackage,
    required TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)
        mobileApp,
    required TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)
        webApp,
  }) {
    return mobileApp(createdAt, description, iconImagePath, appName,
        appStoreUrl, googlePlayUrl, githubUrl);
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
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)?
        mobileApp,
    TResult? Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)?
        webApp,
  }) {
    return mobileApp?.call(createdAt, description, iconImagePath, appName,
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
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)?
        mobileApp,
    TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)?
        webApp,
    required TResult orElse(),
  }) {
    if (mobileApp != null) {
      return mobileApp(createdAt, description, iconImagePath, appName,
          appStoreUrl, googlePlayUrl, githubUrl);
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
      required final String iconImagePath,
      required final String appName,
      required final String appStoreUrl,
      required final String googlePlayUrl,
      required final String githubUrl}) = _$MobileAppWork;

  @override
  DateTime get createdAt;
  @override
  String get description;
  String get iconImagePath;
  String get appName;
  String get appStoreUrl;
  String get googlePlayUrl;
  @override
  String get githubUrl;
  @override
  @JsonKey(ignore: true)
  _$$MobileAppWorkCopyWith<_$MobileAppWork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebAppWorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$WebAppWorkCopyWith(
          _$WebAppWork value, $Res Function(_$WebAppWork) then) =
      __$$WebAppWorkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      String description,
      String iconImagePath,
      String appName,
      String webUrl,
      String githubUrl});
}

/// @nodoc
class __$$WebAppWorkCopyWithImpl<$Res>
    extends _$WorkCopyWithImpl<$Res, _$WebAppWork>
    implements _$$WebAppWorkCopyWith<$Res> {
  __$$WebAppWorkCopyWithImpl(
      _$WebAppWork _value, $Res Function(_$WebAppWork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? description = null,
    Object? iconImagePath = null,
    Object? appName = null,
    Object? webUrl = null,
    Object? githubUrl = null,
  }) {
    return _then(_$WebAppWork(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconImagePath: null == iconImagePath
          ? _value.iconImagePath
          : iconImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      webUrl: null == webUrl
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String,
      githubUrl: null == githubUrl
          ? _value.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WebAppWork implements WebAppWork {
  const _$WebAppWork(
      {required this.createdAt,
      required this.description,
      required this.iconImagePath,
      required this.appName,
      required this.webUrl,
      required this.githubUrl});

  @override
  final DateTime createdAt;
  @override
  final String description;
  @override
  final String iconImagePath;
  @override
  final String appName;
  @override
  final String webUrl;
  @override
  final String githubUrl;

  @override
  String toString() {
    return 'Work.webApp(createdAt: $createdAt, description: $description, iconImagePath: $iconImagePath, appName: $appName, webUrl: $webUrl, githubUrl: $githubUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebAppWork &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconImagePath, iconImagePath) ||
                other.iconImagePath == iconImagePath) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.webUrl, webUrl) || other.webUrl == webUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt, description,
      iconImagePath, appName, webUrl, githubUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebAppWorkCopyWith<_$WebAppWork> get copyWith =>
      __$$WebAppWorkCopyWithImpl<_$WebAppWork>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt, String description,
            String packageName, String pubDevUrl, String githubUrl)
        flutterPackage,
    required TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)
        mobileApp,
    required TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)
        webApp,
  }) {
    return webApp(
        createdAt, description, iconImagePath, appName, webUrl, githubUrl);
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
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)?
        mobileApp,
    TResult? Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)?
        webApp,
  }) {
    return webApp?.call(
        createdAt, description, iconImagePath, appName, webUrl, githubUrl);
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
            String iconImagePath,
            String appName,
            String appStoreUrl,
            String googlePlayUrl,
            String githubUrl)?
        mobileApp,
    TResult Function(
            DateTime createdAt,
            String description,
            String iconImagePath,
            String appName,
            String webUrl,
            String githubUrl)?
        webApp,
    required TResult orElse(),
  }) {
    if (webApp != null) {
      return webApp(
          createdAt, description, iconImagePath, appName, webUrl, githubUrl);
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
      required final String iconImagePath,
      required final String appName,
      required final String webUrl,
      required final String githubUrl}) = _$WebAppWork;

  @override
  DateTime get createdAt;
  @override
  String get description;
  String get iconImagePath;
  String get appName;
  String get webUrl;
  @override
  String get githubUrl;
  @override
  @JsonKey(ignore: true)
  _$$WebAppWorkCopyWith<_$WebAppWork> get copyWith =>
      throw _privateConstructorUsedError;
}
