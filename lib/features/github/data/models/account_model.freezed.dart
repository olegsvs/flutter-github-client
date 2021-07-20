// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
class _$AccountModelTearOff {
  const _$AccountModelTearOff();

  _AccountModel call(
      {required String platform,
      required String domain,
      required String token,
      required String login,
      required String avatarUrl}) {
    return _AccountModel(
      platform: platform,
      domain: domain,
      token: token,
      login: login,
      avatarUrl: avatarUrl,
    );
  }

  AccountModel fromJson(Map<String, Object> json) {
    return AccountModel.fromJson(json);
  }
}

/// @nodoc
const $AccountModel = _$AccountModelTearOff();

/// @nodoc
mixin _$AccountModel {
  String get platform => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res>;
  $Res call(
      {String platform,
      String domain,
      String token,
      String login,
      String avatarUrl});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res> implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  final AccountModel _value;
  // ignore: unused_field
  final $Res Function(AccountModel) _then;

  @override
  $Res call({
    Object? platform = freezed,
    Object? domain = freezed,
    Object? token = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountModelCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$AccountModelCopyWith(
          _AccountModel value, $Res Function(_AccountModel) then) =
      __$AccountModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String platform,
      String domain,
      String token,
      String login,
      String avatarUrl});
}

/// @nodoc
class __$AccountModelCopyWithImpl<$Res> extends _$AccountModelCopyWithImpl<$Res>
    implements _$AccountModelCopyWith<$Res> {
  __$AccountModelCopyWithImpl(
      _AccountModel _value, $Res Function(_AccountModel) _then)
      : super(_value, (v) => _then(v as _AccountModel));

  @override
  _AccountModel get _value => super._value as _AccountModel;

  @override
  $Res call({
    Object? platform = freezed,
    Object? domain = freezed,
    Object? token = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_AccountModel(
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_AccountModel implements _AccountModel {
  const _$_AccountModel(
      {required this.platform,
      required this.domain,
      required this.token,
      required this.login,
      required this.avatarUrl});

  factory _$_AccountModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountModelFromJson(json);

  @override
  final String platform;
  @override
  final String domain;
  @override
  final String token;
  @override
  final String login;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'AccountModel(platform: $platform, domain: $domain, token: $token, login: $login, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountModel &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.domain, domain) ||
                const DeepCollectionEquality().equals(other.domain, domain)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(domain) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @JsonKey(ignore: true)
  @override
  _$AccountModelCopyWith<_AccountModel> get copyWith =>
      __$AccountModelCopyWithImpl<_AccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountModelToJson(this);
  }
}

abstract class _AccountModel implements AccountModel {
  const factory _AccountModel(
      {required String platform,
      required String domain,
      required String token,
      required String login,
      required String avatarUrl}) = _$_AccountModel;

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$_AccountModel.fromJson;

  @override
  String get platform => throw _privateConstructorUsedError;
  @override
  String get domain => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  String get login => throw _privateConstructorUsedError;
  @override
  String get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountModelCopyWith<_AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
