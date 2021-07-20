// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'github_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubEventModel _$GithubEventModelFromJson(Map<String, dynamic> json) {
  return _GithubEventModel.fromJson(json);
}

/// @nodoc
class _$GithubEventModelTearOff {
  const _$GithubEventModelTearOff();

  _GithubEventModel call(
      {required GithubEventUserModel? actor,
      required String? type,
      required GithubEventRepoModel? repo,
      required DateTime? createdAt,
      required GithubEventPayloadModel? payload}) {
    return _GithubEventModel(
      actor: actor,
      type: type,
      repo: repo,
      createdAt: createdAt,
      payload: payload,
    );
  }

  GithubEventModel fromJson(Map<String, Object> json) {
    return GithubEventModel.fromJson(json);
  }
}

/// @nodoc
const $GithubEventModel = _$GithubEventModelTearOff();

/// @nodoc
mixin _$GithubEventModel {
  GithubEventUserModel? get actor => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  GithubEventRepoModel? get repo => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  GithubEventPayloadModel? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubEventModelCopyWith<GithubEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventModelCopyWith<$Res> {
  factory $GithubEventModelCopyWith(
          GithubEventModel value, $Res Function(GithubEventModel) then) =
      _$GithubEventModelCopyWithImpl<$Res>;
  $Res call(
      {GithubEventUserModel? actor,
      String? type,
      GithubEventRepoModel? repo,
      DateTime? createdAt,
      GithubEventPayloadModel? payload});

  $GithubEventUserModelCopyWith<$Res>? get actor;
  $GithubEventRepoModelCopyWith<$Res>? get repo;
  $GithubEventPayloadModelCopyWith<$Res>? get payload;
}

/// @nodoc
class _$GithubEventModelCopyWithImpl<$Res>
    implements $GithubEventModelCopyWith<$Res> {
  _$GithubEventModelCopyWithImpl(this._value, this._then);

  final GithubEventModel _value;
  // ignore: unused_field
  final $Res Function(GithubEventModel) _then;

  @override
  $Res call({
    Object? actor = freezed,
    Object? type = freezed,
    Object? repo = freezed,
    Object? createdAt = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      actor: actor == freezed
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as GithubEventUserModel?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      repo: repo == freezed
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as GithubEventRepoModel?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GithubEventPayloadModel?,
    ));
  }

  @override
  $GithubEventUserModelCopyWith<$Res>? get actor {
    if (_value.actor == null) {
      return null;
    }

    return $GithubEventUserModelCopyWith<$Res>(_value.actor!, (value) {
      return _then(_value.copyWith(actor: value));
    });
  }

  @override
  $GithubEventRepoModelCopyWith<$Res>? get repo {
    if (_value.repo == null) {
      return null;
    }

    return $GithubEventRepoModelCopyWith<$Res>(_value.repo!, (value) {
      return _then(_value.copyWith(repo: value));
    });
  }

  @override
  $GithubEventPayloadModelCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $GithubEventPayloadModelCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$GithubEventModelCopyWith<$Res>
    implements $GithubEventModelCopyWith<$Res> {
  factory _$GithubEventModelCopyWith(
          _GithubEventModel value, $Res Function(_GithubEventModel) then) =
      __$GithubEventModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {GithubEventUserModel? actor,
      String? type,
      GithubEventRepoModel? repo,
      DateTime? createdAt,
      GithubEventPayloadModel? payload});

  @override
  $GithubEventUserModelCopyWith<$Res>? get actor;
  @override
  $GithubEventRepoModelCopyWith<$Res>? get repo;
  @override
  $GithubEventPayloadModelCopyWith<$Res>? get payload;
}

/// @nodoc
class __$GithubEventModelCopyWithImpl<$Res>
    extends _$GithubEventModelCopyWithImpl<$Res>
    implements _$GithubEventModelCopyWith<$Res> {
  __$GithubEventModelCopyWithImpl(
      _GithubEventModel _value, $Res Function(_GithubEventModel) _then)
      : super(_value, (v) => _then(v as _GithubEventModel));

  @override
  _GithubEventModel get _value => super._value as _GithubEventModel;

  @override
  $Res call({
    Object? actor = freezed,
    Object? type = freezed,
    Object? repo = freezed,
    Object? createdAt = freezed,
    Object? payload = freezed,
  }) {
    return _then(_GithubEventModel(
      actor: actor == freezed
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as GithubEventUserModel?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      repo: repo == freezed
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as GithubEventRepoModel?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GithubEventPayloadModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubEventModel implements _GithubEventModel {
  const _$_GithubEventModel(
      {required this.actor,
      required this.type,
      required this.repo,
      required this.createdAt,
      required this.payload});

  factory _$_GithubEventModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubEventModelFromJson(json);

  @override
  final GithubEventUserModel? actor;
  @override
  final String? type;
  @override
  final GithubEventRepoModel? repo;
  @override
  final DateTime? createdAt;
  @override
  final GithubEventPayloadModel? payload;

  @override
  String toString() {
    return 'GithubEventModel(actor: $actor, type: $type, repo: $repo, createdAt: $createdAt, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventModel &&
            (identical(other.actor, actor) ||
                const DeepCollectionEquality().equals(other.actor, actor)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.repo, repo) ||
                const DeepCollectionEquality().equals(other.repo, repo)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(actor) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(repo) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$GithubEventModelCopyWith<_GithubEventModel> get copyWith =>
      __$GithubEventModelCopyWithImpl<_GithubEventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubEventModelToJson(this);
  }
}

abstract class _GithubEventModel implements GithubEventModel {
  const factory _GithubEventModel(
      {required GithubEventUserModel? actor,
      required String? type,
      required GithubEventRepoModel? repo,
      required DateTime? createdAt,
      required GithubEventPayloadModel? payload}) = _$_GithubEventModel;

  factory _GithubEventModel.fromJson(Map<String, dynamic> json) =
      _$_GithubEventModel.fromJson;

  @override
  GithubEventUserModel? get actor => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  GithubEventRepoModel? get repo => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  GithubEventPayloadModel? get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventModelCopyWith<_GithubEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubEventUserModel _$GithubEventUserModelFromJson(Map<String, dynamic> json) {
  return _GithubEventUserModel.fromJson(json);
}

/// @nodoc
class _$GithubEventUserModelTearOff {
  const _$GithubEventUserModelTearOff();

  _GithubEventUserModel call(
      {required String? login, required String? avatarUrl}) {
    return _GithubEventUserModel(
      login: login,
      avatarUrl: avatarUrl,
    );
  }

  GithubEventUserModel fromJson(Map<String, Object> json) {
    return GithubEventUserModel.fromJson(json);
  }
}

/// @nodoc
const $GithubEventUserModel = _$GithubEventUserModelTearOff();

/// @nodoc
mixin _$GithubEventUserModel {
  String? get login => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubEventUserModelCopyWith<GithubEventUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventUserModelCopyWith<$Res> {
  factory $GithubEventUserModelCopyWith(GithubEventUserModel value,
          $Res Function(GithubEventUserModel) then) =
      _$GithubEventUserModelCopyWithImpl<$Res>;
  $Res call({String? login, String? avatarUrl});
}

/// @nodoc
class _$GithubEventUserModelCopyWithImpl<$Res>
    implements $GithubEventUserModelCopyWith<$Res> {
  _$GithubEventUserModelCopyWithImpl(this._value, this._then);

  final GithubEventUserModel _value;
  // ignore: unused_field
  final $Res Function(GithubEventUserModel) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubEventUserModelCopyWith<$Res>
    implements $GithubEventUserModelCopyWith<$Res> {
  factory _$GithubEventUserModelCopyWith(_GithubEventUserModel value,
          $Res Function(_GithubEventUserModel) then) =
      __$GithubEventUserModelCopyWithImpl<$Res>;
  @override
  $Res call({String? login, String? avatarUrl});
}

/// @nodoc
class __$GithubEventUserModelCopyWithImpl<$Res>
    extends _$GithubEventUserModelCopyWithImpl<$Res>
    implements _$GithubEventUserModelCopyWith<$Res> {
  __$GithubEventUserModelCopyWithImpl(
      _GithubEventUserModel _value, $Res Function(_GithubEventUserModel) _then)
      : super(_value, (v) => _then(v as _GithubEventUserModel));

  @override
  _GithubEventUserModel get _value => super._value as _GithubEventUserModel;

  @override
  $Res call({
    Object? login = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_GithubEventUserModel(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubEventUserModel implements _GithubEventUserModel {
  const _$_GithubEventUserModel({required this.login, required this.avatarUrl});

  factory _$_GithubEventUserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubEventUserModelFromJson(json);

  @override
  final String? login;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'GithubEventUserModel(login: $login, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventUserModel &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @JsonKey(ignore: true)
  @override
  _$GithubEventUserModelCopyWith<_GithubEventUserModel> get copyWith =>
      __$GithubEventUserModelCopyWithImpl<_GithubEventUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubEventUserModelToJson(this);
  }
}

abstract class _GithubEventUserModel implements GithubEventUserModel {
  const factory _GithubEventUserModel(
      {required String? login,
      required String? avatarUrl}) = _$_GithubEventUserModel;

  factory _GithubEventUserModel.fromJson(Map<String, dynamic> json) =
      _$_GithubEventUserModel.fromJson;

  @override
  String? get login => throw _privateConstructorUsedError;
  @override
  String? get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventUserModelCopyWith<_GithubEventUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubEventRepoModel _$GithubEventRepoModelFromJson(Map<String, dynamic> json) {
  return _GithubEventRepoModel.fromJson(json);
}

/// @nodoc
class _$GithubEventRepoModelTearOff {
  const _$GithubEventRepoModelTearOff();

  _GithubEventRepoModel call({required String? name}) {
    return _GithubEventRepoModel(
      name: name,
    );
  }

  GithubEventRepoModel fromJson(Map<String, Object> json) {
    return GithubEventRepoModel.fromJson(json);
  }
}

/// @nodoc
const $GithubEventRepoModel = _$GithubEventRepoModelTearOff();

/// @nodoc
mixin _$GithubEventRepoModel {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubEventRepoModelCopyWith<GithubEventRepoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventRepoModelCopyWith<$Res> {
  factory $GithubEventRepoModelCopyWith(GithubEventRepoModel value,
          $Res Function(GithubEventRepoModel) then) =
      _$GithubEventRepoModelCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$GithubEventRepoModelCopyWithImpl<$Res>
    implements $GithubEventRepoModelCopyWith<$Res> {
  _$GithubEventRepoModelCopyWithImpl(this._value, this._then);

  final GithubEventRepoModel _value;
  // ignore: unused_field
  final $Res Function(GithubEventRepoModel) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubEventRepoModelCopyWith<$Res>
    implements $GithubEventRepoModelCopyWith<$Res> {
  factory _$GithubEventRepoModelCopyWith(_GithubEventRepoModel value,
          $Res Function(_GithubEventRepoModel) then) =
      __$GithubEventRepoModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name});
}

/// @nodoc
class __$GithubEventRepoModelCopyWithImpl<$Res>
    extends _$GithubEventRepoModelCopyWithImpl<$Res>
    implements _$GithubEventRepoModelCopyWith<$Res> {
  __$GithubEventRepoModelCopyWithImpl(
      _GithubEventRepoModel _value, $Res Function(_GithubEventRepoModel) _then)
      : super(_value, (v) => _then(v as _GithubEventRepoModel));

  @override
  _GithubEventRepoModel get _value => super._value as _GithubEventRepoModel;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_GithubEventRepoModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubEventRepoModel implements _GithubEventRepoModel {
  const _$_GithubEventRepoModel({required this.name});

  factory _$_GithubEventRepoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubEventRepoModelFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'GithubEventRepoModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventRepoModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$GithubEventRepoModelCopyWith<_GithubEventRepoModel> get copyWith =>
      __$GithubEventRepoModelCopyWithImpl<_GithubEventRepoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubEventRepoModelToJson(this);
  }
}

abstract class _GithubEventRepoModel implements GithubEventRepoModel {
  const factory _GithubEventRepoModel({required String? name}) =
      _$_GithubEventRepoModel;

  factory _GithubEventRepoModel.fromJson(Map<String, dynamic> json) =
      _$_GithubEventRepoModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventRepoModelCopyWith<_GithubEventRepoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubEventPayloadModel _$GithubEventPayloadModelFromJson(
    Map<String, dynamic> json) {
  return _GithubEventPayloadModel.fromJson(json);
}

/// @nodoc
class _$GithubEventPayloadModelTearOff {
  const _$GithubEventPayloadModelTearOff();

  _GithubEventPayloadModel call(
      {required GithubEventIssueModel? issue,
      required GithubEventIssueModel? pullRequest,
      required GithubEventCommentModel? comment,
      required GithubEventReleaseModel? release,
      required String? action,
      required String? ref,
      required String? refType,
      required String? before,
      required String? head,
      required List<GithubEventCommitModel>? commits,
      required Map<String, dynamic>? forkee,
      required List<GithubPagesItemModel>? pages,
      required GithubSecurityItemModel? securityAdvisory,
      required GithubAlertItemModel? alert,
      required GithubProjectItemModel? project,
      required GithubProjectColumnItemModel? projectColumn,
      required GithubInstallationRepositoriesItemModel? installation,
      required GithubCheckrunItemModel? checkRun,
      required GithubCheckSuiteItemModel? checkSuite,
      required GithubContentReferenceItemModel? contentReference}) {
    return _GithubEventPayloadModel(
      issue: issue,
      pullRequest: pullRequest,
      comment: comment,
      release: release,
      action: action,
      ref: ref,
      refType: refType,
      before: before,
      head: head,
      commits: commits,
      forkee: forkee,
      pages: pages,
      securityAdvisory: securityAdvisory,
      alert: alert,
      project: project,
      projectColumn: projectColumn,
      installation: installation,
      checkRun: checkRun,
      checkSuite: checkSuite,
      contentReference: contentReference,
    );
  }

  GithubEventPayloadModel fromJson(Map<String, Object> json) {
    return GithubEventPayloadModel.fromJson(json);
  }
}

/// @nodoc
const $GithubEventPayloadModel = _$GithubEventPayloadModelTearOff();

/// @nodoc
mixin _$GithubEventPayloadModel {
  GithubEventIssueModel? get issue => throw _privateConstructorUsedError;
  GithubEventIssueModel? get pullRequest => throw _privateConstructorUsedError;
  GithubEventCommentModel? get comment => throw _privateConstructorUsedError;
  GithubEventReleaseModel? get release => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get ref => throw _privateConstructorUsedError;
  String? get refType => throw _privateConstructorUsedError;
  String? get before => throw _privateConstructorUsedError;
  String? get head => throw _privateConstructorUsedError;
  List<GithubEventCommitModel>? get commits =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get forkee => throw _privateConstructorUsedError;
  List<GithubPagesItemModel>? get pages => throw _privateConstructorUsedError;
  GithubSecurityItemModel? get securityAdvisory =>
      throw _privateConstructorUsedError;
  GithubAlertItemModel? get alert => throw _privateConstructorUsedError;
  GithubProjectItemModel? get project => throw _privateConstructorUsedError;
  GithubProjectColumnItemModel? get projectColumn =>
      throw _privateConstructorUsedError;
  GithubInstallationRepositoriesItemModel? get installation =>
      throw _privateConstructorUsedError;
  GithubCheckrunItemModel? get checkRun => throw _privateConstructorUsedError;
  GithubCheckSuiteItemModel? get checkSuite =>
      throw _privateConstructorUsedError;
  GithubContentReferenceItemModel? get contentReference =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubEventPayloadModelCopyWith<GithubEventPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventPayloadModelCopyWith<$Res> {
  factory $GithubEventPayloadModelCopyWith(GithubEventPayloadModel value,
          $Res Function(GithubEventPayloadModel) then) =
      _$GithubEventPayloadModelCopyWithImpl<$Res>;
  $Res call(
      {GithubEventIssueModel? issue,
      GithubEventIssueModel? pullRequest,
      GithubEventCommentModel? comment,
      GithubEventReleaseModel? release,
      String? action,
      String? ref,
      String? refType,
      String? before,
      String? head,
      List<GithubEventCommitModel>? commits,
      Map<String, dynamic>? forkee,
      List<GithubPagesItemModel>? pages,
      GithubSecurityItemModel? securityAdvisory,
      GithubAlertItemModel? alert,
      GithubProjectItemModel? project,
      GithubProjectColumnItemModel? projectColumn,
      GithubInstallationRepositoriesItemModel? installation,
      GithubCheckrunItemModel? checkRun,
      GithubCheckSuiteItemModel? checkSuite,
      GithubContentReferenceItemModel? contentReference});

  $GithubEventIssueModelCopyWith<$Res>? get issue;
  $GithubEventIssueModelCopyWith<$Res>? get pullRequest;
  $GithubEventCommentModelCopyWith<$Res>? get comment;
  $GithubEventReleaseModelCopyWith<$Res>? get release;
  $GithubSecurityItemModelCopyWith<$Res>? get securityAdvisory;
  $GithubAlertItemModelCopyWith<$Res>? get alert;
  $GithubProjectItemModelCopyWith<$Res>? get project;
  $GithubProjectColumnItemModelCopyWith<$Res>? get projectColumn;
  $GithubInstallationRepositoriesItemModelCopyWith<$Res>? get installation;
  $GithubCheckrunItemModelCopyWith<$Res>? get checkRun;
  $GithubCheckSuiteItemModelCopyWith<$Res>? get checkSuite;
  $GithubContentReferenceItemModelCopyWith<$Res>? get contentReference;
}

/// @nodoc
class _$GithubEventPayloadModelCopyWithImpl<$Res>
    implements $GithubEventPayloadModelCopyWith<$Res> {
  _$GithubEventPayloadModelCopyWithImpl(this._value, this._then);

  final GithubEventPayloadModel _value;
  // ignore: unused_field
  final $Res Function(GithubEventPayloadModel) _then;

  @override
  $Res call({
    Object? issue = freezed,
    Object? pullRequest = freezed,
    Object? comment = freezed,
    Object? release = freezed,
    Object? action = freezed,
    Object? ref = freezed,
    Object? refType = freezed,
    Object? before = freezed,
    Object? head = freezed,
    Object? commits = freezed,
    Object? forkee = freezed,
    Object? pages = freezed,
    Object? securityAdvisory = freezed,
    Object? alert = freezed,
    Object? project = freezed,
    Object? projectColumn = freezed,
    Object? installation = freezed,
    Object? checkRun = freezed,
    Object? checkSuite = freezed,
    Object? contentReference = freezed,
  }) {
    return _then(_value.copyWith(
      issue: issue == freezed
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as GithubEventIssueModel?,
      pullRequest: pullRequest == freezed
          ? _value.pullRequest
          : pullRequest // ignore: cast_nullable_to_non_nullable
              as GithubEventIssueModel?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as GithubEventCommentModel?,
      release: release == freezed
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as GithubEventReleaseModel?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      refType: refType == freezed
          ? _value.refType
          : refType // ignore: cast_nullable_to_non_nullable
              as String?,
      before: before == freezed
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      head: head == freezed
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as String?,
      commits: commits == freezed
          ? _value.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as List<GithubEventCommitModel>?,
      forkee: forkee == freezed
          ? _value.forkee
          : forkee // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<GithubPagesItemModel>?,
      securityAdvisory: securityAdvisory == freezed
          ? _value.securityAdvisory
          : securityAdvisory // ignore: cast_nullable_to_non_nullable
              as GithubSecurityItemModel?,
      alert: alert == freezed
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as GithubAlertItemModel?,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as GithubProjectItemModel?,
      projectColumn: projectColumn == freezed
          ? _value.projectColumn
          : projectColumn // ignore: cast_nullable_to_non_nullable
              as GithubProjectColumnItemModel?,
      installation: installation == freezed
          ? _value.installation
          : installation // ignore: cast_nullable_to_non_nullable
              as GithubInstallationRepositoriesItemModel?,
      checkRun: checkRun == freezed
          ? _value.checkRun
          : checkRun // ignore: cast_nullable_to_non_nullable
              as GithubCheckrunItemModel?,
      checkSuite: checkSuite == freezed
          ? _value.checkSuite
          : checkSuite // ignore: cast_nullable_to_non_nullable
              as GithubCheckSuiteItemModel?,
      contentReference: contentReference == freezed
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as GithubContentReferenceItemModel?,
    ));
  }

  @override
  $GithubEventIssueModelCopyWith<$Res>? get issue {
    if (_value.issue == null) {
      return null;
    }

    return $GithubEventIssueModelCopyWith<$Res>(_value.issue!, (value) {
      return _then(_value.copyWith(issue: value));
    });
  }

  @override
  $GithubEventIssueModelCopyWith<$Res>? get pullRequest {
    if (_value.pullRequest == null) {
      return null;
    }

    return $GithubEventIssueModelCopyWith<$Res>(_value.pullRequest!, (value) {
      return _then(_value.copyWith(pullRequest: value));
    });
  }

  @override
  $GithubEventCommentModelCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $GithubEventCommentModelCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }

  @override
  $GithubEventReleaseModelCopyWith<$Res>? get release {
    if (_value.release == null) {
      return null;
    }

    return $GithubEventReleaseModelCopyWith<$Res>(_value.release!, (value) {
      return _then(_value.copyWith(release: value));
    });
  }

  @override
  $GithubSecurityItemModelCopyWith<$Res>? get securityAdvisory {
    if (_value.securityAdvisory == null) {
      return null;
    }

    return $GithubSecurityItemModelCopyWith<$Res>(_value.securityAdvisory!,
        (value) {
      return _then(_value.copyWith(securityAdvisory: value));
    });
  }

  @override
  $GithubAlertItemModelCopyWith<$Res>? get alert {
    if (_value.alert == null) {
      return null;
    }

    return $GithubAlertItemModelCopyWith<$Res>(_value.alert!, (value) {
      return _then(_value.copyWith(alert: value));
    });
  }

  @override
  $GithubProjectItemModelCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $GithubProjectItemModelCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value));
    });
  }

  @override
  $GithubProjectColumnItemModelCopyWith<$Res>? get projectColumn {
    if (_value.projectColumn == null) {
      return null;
    }

    return $GithubProjectColumnItemModelCopyWith<$Res>(_value.projectColumn!,
        (value) {
      return _then(_value.copyWith(projectColumn: value));
    });
  }

  @override
  $GithubInstallationRepositoriesItemModelCopyWith<$Res>? get installation {
    if (_value.installation == null) {
      return null;
    }

    return $GithubInstallationRepositoriesItemModelCopyWith<$Res>(
        _value.installation!, (value) {
      return _then(_value.copyWith(installation: value));
    });
  }

  @override
  $GithubCheckrunItemModelCopyWith<$Res>? get checkRun {
    if (_value.checkRun == null) {
      return null;
    }

    return $GithubCheckrunItemModelCopyWith<$Res>(_value.checkRun!, (value) {
      return _then(_value.copyWith(checkRun: value));
    });
  }

  @override
  $GithubCheckSuiteItemModelCopyWith<$Res>? get checkSuite {
    if (_value.checkSuite == null) {
      return null;
    }

    return $GithubCheckSuiteItemModelCopyWith<$Res>(_value.checkSuite!,
        (value) {
      return _then(_value.copyWith(checkSuite: value));
    });
  }

  @override
  $GithubContentReferenceItemModelCopyWith<$Res>? get contentReference {
    if (_value.contentReference == null) {
      return null;
    }

    return $GithubContentReferenceItemModelCopyWith<$Res>(
        _value.contentReference!, (value) {
      return _then(_value.copyWith(contentReference: value));
    });
  }
}

/// @nodoc
abstract class _$GithubEventPayloadModelCopyWith<$Res>
    implements $GithubEventPayloadModelCopyWith<$Res> {
  factory _$GithubEventPayloadModelCopyWith(_GithubEventPayloadModel value,
          $Res Function(_GithubEventPayloadModel) then) =
      __$GithubEventPayloadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {GithubEventIssueModel? issue,
      GithubEventIssueModel? pullRequest,
      GithubEventCommentModel? comment,
      GithubEventReleaseModel? release,
      String? action,
      String? ref,
      String? refType,
      String? before,
      String? head,
      List<GithubEventCommitModel>? commits,
      Map<String, dynamic>? forkee,
      List<GithubPagesItemModel>? pages,
      GithubSecurityItemModel? securityAdvisory,
      GithubAlertItemModel? alert,
      GithubProjectItemModel? project,
      GithubProjectColumnItemModel? projectColumn,
      GithubInstallationRepositoriesItemModel? installation,
      GithubCheckrunItemModel? checkRun,
      GithubCheckSuiteItemModel? checkSuite,
      GithubContentReferenceItemModel? contentReference});

  @override
  $GithubEventIssueModelCopyWith<$Res>? get issue;
  @override
  $GithubEventIssueModelCopyWith<$Res>? get pullRequest;
  @override
  $GithubEventCommentModelCopyWith<$Res>? get comment;
  @override
  $GithubEventReleaseModelCopyWith<$Res>? get release;
  @override
  $GithubSecurityItemModelCopyWith<$Res>? get securityAdvisory;
  @override
  $GithubAlertItemModelCopyWith<$Res>? get alert;
  @override
  $GithubProjectItemModelCopyWith<$Res>? get project;
  @override
  $GithubProjectColumnItemModelCopyWith<$Res>? get projectColumn;
  @override
  $GithubInstallationRepositoriesItemModelCopyWith<$Res>? get installation;
  @override
  $GithubCheckrunItemModelCopyWith<$Res>? get checkRun;
  @override
  $GithubCheckSuiteItemModelCopyWith<$Res>? get checkSuite;
  @override
  $GithubContentReferenceItemModelCopyWith<$Res>? get contentReference;
}

/// @nodoc
class __$GithubEventPayloadModelCopyWithImpl<$Res>
    extends _$GithubEventPayloadModelCopyWithImpl<$Res>
    implements _$GithubEventPayloadModelCopyWith<$Res> {
  __$GithubEventPayloadModelCopyWithImpl(_GithubEventPayloadModel _value,
      $Res Function(_GithubEventPayloadModel) _then)
      : super(_value, (v) => _then(v as _GithubEventPayloadModel));

  @override
  _GithubEventPayloadModel get _value =>
      super._value as _GithubEventPayloadModel;

  @override
  $Res call({
    Object? issue = freezed,
    Object? pullRequest = freezed,
    Object? comment = freezed,
    Object? release = freezed,
    Object? action = freezed,
    Object? ref = freezed,
    Object? refType = freezed,
    Object? before = freezed,
    Object? head = freezed,
    Object? commits = freezed,
    Object? forkee = freezed,
    Object? pages = freezed,
    Object? securityAdvisory = freezed,
    Object? alert = freezed,
    Object? project = freezed,
    Object? projectColumn = freezed,
    Object? installation = freezed,
    Object? checkRun = freezed,
    Object? checkSuite = freezed,
    Object? contentReference = freezed,
  }) {
    return _then(_GithubEventPayloadModel(
      issue: issue == freezed
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as GithubEventIssueModel?,
      pullRequest: pullRequest == freezed
          ? _value.pullRequest
          : pullRequest // ignore: cast_nullable_to_non_nullable
              as GithubEventIssueModel?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as GithubEventCommentModel?,
      release: release == freezed
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as GithubEventReleaseModel?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      refType: refType == freezed
          ? _value.refType
          : refType // ignore: cast_nullable_to_non_nullable
              as String?,
      before: before == freezed
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      head: head == freezed
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as String?,
      commits: commits == freezed
          ? _value.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as List<GithubEventCommitModel>?,
      forkee: forkee == freezed
          ? _value.forkee
          : forkee // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<GithubPagesItemModel>?,
      securityAdvisory: securityAdvisory == freezed
          ? _value.securityAdvisory
          : securityAdvisory // ignore: cast_nullable_to_non_nullable
              as GithubSecurityItemModel?,
      alert: alert == freezed
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as GithubAlertItemModel?,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as GithubProjectItemModel?,
      projectColumn: projectColumn == freezed
          ? _value.projectColumn
          : projectColumn // ignore: cast_nullable_to_non_nullable
              as GithubProjectColumnItemModel?,
      installation: installation == freezed
          ? _value.installation
          : installation // ignore: cast_nullable_to_non_nullable
              as GithubInstallationRepositoriesItemModel?,
      checkRun: checkRun == freezed
          ? _value.checkRun
          : checkRun // ignore: cast_nullable_to_non_nullable
              as GithubCheckrunItemModel?,
      checkSuite: checkSuite == freezed
          ? _value.checkSuite
          : checkSuite // ignore: cast_nullable_to_non_nullable
              as GithubCheckSuiteItemModel?,
      contentReference: contentReference == freezed
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as GithubContentReferenceItemModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubEventPayloadModel implements _GithubEventPayloadModel {
  const _$_GithubEventPayloadModel(
      {required this.issue,
      required this.pullRequest,
      required this.comment,
      required this.release,
      required this.action,
      required this.ref,
      required this.refType,
      required this.before,
      required this.head,
      required this.commits,
      required this.forkee,
      required this.pages,
      required this.securityAdvisory,
      required this.alert,
      required this.project,
      required this.projectColumn,
      required this.installation,
      required this.checkRun,
      required this.checkSuite,
      required this.contentReference});

  factory _$_GithubEventPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubEventPayloadModelFromJson(json);

  @override
  final GithubEventIssueModel? issue;
  @override
  final GithubEventIssueModel? pullRequest;
  @override
  final GithubEventCommentModel? comment;
  @override
  final GithubEventReleaseModel? release;
  @override
  final String? action;
  @override
  final String? ref;
  @override
  final String? refType;
  @override
  final String? before;
  @override
  final String? head;
  @override
  final List<GithubEventCommitModel>? commits;
  @override
  final Map<String, dynamic>? forkee;
  @override
  final List<GithubPagesItemModel>? pages;
  @override
  final GithubSecurityItemModel? securityAdvisory;
  @override
  final GithubAlertItemModel? alert;
  @override
  final GithubProjectItemModel? project;
  @override
  final GithubProjectColumnItemModel? projectColumn;
  @override
  final GithubInstallationRepositoriesItemModel? installation;
  @override
  final GithubCheckrunItemModel? checkRun;
  @override
  final GithubCheckSuiteItemModel? checkSuite;
  @override
  final GithubContentReferenceItemModel? contentReference;

  @override
  String toString() {
    return 'GithubEventPayloadModel(issue: $issue, pullRequest: $pullRequest, comment: $comment, release: $release, action: $action, ref: $ref, refType: $refType, before: $before, head: $head, commits: $commits, forkee: $forkee, pages: $pages, securityAdvisory: $securityAdvisory, alert: $alert, project: $project, projectColumn: $projectColumn, installation: $installation, checkRun: $checkRun, checkSuite: $checkSuite, contentReference: $contentReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventPayloadModel &&
            (identical(other.issue, issue) ||
                const DeepCollectionEquality().equals(other.issue, issue)) &&
            (identical(other.pullRequest, pullRequest) ||
                const DeepCollectionEquality()
                    .equals(other.pullRequest, pullRequest)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.release, release) ||
                const DeepCollectionEquality()
                    .equals(other.release, release)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.ref, ref) ||
                const DeepCollectionEquality().equals(other.ref, ref)) &&
            (identical(other.refType, refType) ||
                const DeepCollectionEquality()
                    .equals(other.refType, refType)) &&
            (identical(other.before, before) ||
                const DeepCollectionEquality().equals(other.before, before)) &&
            (identical(other.head, head) ||
                const DeepCollectionEquality().equals(other.head, head)) &&
            (identical(other.commits, commits) ||
                const DeepCollectionEquality()
                    .equals(other.commits, commits)) &&
            (identical(other.forkee, forkee) ||
                const DeepCollectionEquality().equals(other.forkee, forkee)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)) &&
            (identical(other.securityAdvisory, securityAdvisory) ||
                const DeepCollectionEquality()
                    .equals(other.securityAdvisory, securityAdvisory)) &&
            (identical(other.alert, alert) ||
                const DeepCollectionEquality().equals(other.alert, alert)) &&
            (identical(other.project, project) ||
                const DeepCollectionEquality()
                    .equals(other.project, project)) &&
            (identical(other.projectColumn, projectColumn) ||
                const DeepCollectionEquality()
                    .equals(other.projectColumn, projectColumn)) &&
            (identical(other.installation, installation) ||
                const DeepCollectionEquality()
                    .equals(other.installation, installation)) &&
            (identical(other.checkRun, checkRun) ||
                const DeepCollectionEquality()
                    .equals(other.checkRun, checkRun)) &&
            (identical(other.checkSuite, checkSuite) ||
                const DeepCollectionEquality()
                    .equals(other.checkSuite, checkSuite)) &&
            (identical(other.contentReference, contentReference) ||
                const DeepCollectionEquality()
                    .equals(other.contentReference, contentReference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(issue) ^
      const DeepCollectionEquality().hash(pullRequest) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(release) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(ref) ^
      const DeepCollectionEquality().hash(refType) ^
      const DeepCollectionEquality().hash(before) ^
      const DeepCollectionEquality().hash(head) ^
      const DeepCollectionEquality().hash(commits) ^
      const DeepCollectionEquality().hash(forkee) ^
      const DeepCollectionEquality().hash(pages) ^
      const DeepCollectionEquality().hash(securityAdvisory) ^
      const DeepCollectionEquality().hash(alert) ^
      const DeepCollectionEquality().hash(project) ^
      const DeepCollectionEquality().hash(projectColumn) ^
      const DeepCollectionEquality().hash(installation) ^
      const DeepCollectionEquality().hash(checkRun) ^
      const DeepCollectionEquality().hash(checkSuite) ^
      const DeepCollectionEquality().hash(contentReference);

  @JsonKey(ignore: true)
  @override
  _$GithubEventPayloadModelCopyWith<_GithubEventPayloadModel> get copyWith =>
      __$GithubEventPayloadModelCopyWithImpl<_GithubEventPayloadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubEventPayloadModelToJson(this);
  }
}

abstract class _GithubEventPayloadModel implements GithubEventPayloadModel {
  const factory _GithubEventPayloadModel(
          {required GithubEventIssueModel? issue,
          required GithubEventIssueModel? pullRequest,
          required GithubEventCommentModel? comment,
          required GithubEventReleaseModel? release,
          required String? action,
          required String? ref,
          required String? refType,
          required String? before,
          required String? head,
          required List<GithubEventCommitModel>? commits,
          required Map<String, dynamic>? forkee,
          required List<GithubPagesItemModel>? pages,
          required GithubSecurityItemModel? securityAdvisory,
          required GithubAlertItemModel? alert,
          required GithubProjectItemModel? project,
          required GithubProjectColumnItemModel? projectColumn,
          required GithubInstallationRepositoriesItemModel? installation,
          required GithubCheckrunItemModel? checkRun,
          required GithubCheckSuiteItemModel? checkSuite,
          required GithubContentReferenceItemModel? contentReference}) =
      _$_GithubEventPayloadModel;

  factory _GithubEventPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_GithubEventPayloadModel.fromJson;

  @override
  GithubEventIssueModel? get issue => throw _privateConstructorUsedError;
  @override
  GithubEventIssueModel? get pullRequest => throw _privateConstructorUsedError;
  @override
  GithubEventCommentModel? get comment => throw _privateConstructorUsedError;
  @override
  GithubEventReleaseModel? get release => throw _privateConstructorUsedError;
  @override
  String? get action => throw _privateConstructorUsedError;
  @override
  String? get ref => throw _privateConstructorUsedError;
  @override
  String? get refType => throw _privateConstructorUsedError;
  @override
  String? get before => throw _privateConstructorUsedError;
  @override
  String? get head => throw _privateConstructorUsedError;
  @override
  List<GithubEventCommitModel>? get commits =>
      throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get forkee => throw _privateConstructorUsedError;
  @override
  List<GithubPagesItemModel>? get pages => throw _privateConstructorUsedError;
  @override
  GithubSecurityItemModel? get securityAdvisory =>
      throw _privateConstructorUsedError;
  @override
  GithubAlertItemModel? get alert => throw _privateConstructorUsedError;
  @override
  GithubProjectItemModel? get project => throw _privateConstructorUsedError;
  @override
  GithubProjectColumnItemModel? get projectColumn =>
      throw _privateConstructorUsedError;
  @override
  GithubInstallationRepositoriesItemModel? get installation =>
      throw _privateConstructorUsedError;
  @override
  GithubCheckrunItemModel? get checkRun => throw _privateConstructorUsedError;
  @override
  GithubCheckSuiteItemModel? get checkSuite =>
      throw _privateConstructorUsedError;
  @override
  GithubContentReferenceItemModel? get contentReference =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventPayloadModelCopyWith<_GithubEventPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubEventIssueModel _$GithubEventIssueModelFromJson(
    Map<String, dynamic> json) {
  return _GithubEventIssueModel.fromJson(json);
}

/// @nodoc
class _$GithubEventIssueModelTearOff {
  const _$GithubEventIssueModelTearOff();

  _GithubEventIssueModel call(
      {required String? title,
      required GithubEventUserModel? user,
      required int? number,
      required String? body,
      required dynamic pullRequest,
      required String? state,
      required int? comments,
      required bool? merged,
      required DateTime? createdAt}) {
    return _GithubEventIssueModel(
      title: title,
      user: user,
      number: number,
      body: body,
      pullRequest: pullRequest,
      state: state,
      comments: comments,
      merged: merged,
      createdAt: createdAt,
    );
  }

  GithubEventIssueModel fromJson(Map<String, Object> json) {
    return GithubEventIssueModel.fromJson(json);
  }
}

/// @nodoc
const $GithubEventIssueModel = _$GithubEventIssueModelTearOff();

/// @nodoc
mixin _$GithubEventIssueModel {
  String? get title => throw _privateConstructorUsedError;
  GithubEventUserModel? get user => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  dynamic get pullRequest => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  int? get comments => throw _privateConstructorUsedError;
  bool? get merged => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubEventIssueModelCopyWith<GithubEventIssueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventIssueModelCopyWith<$Res> {
  factory $GithubEventIssueModelCopyWith(GithubEventIssueModel value,
          $Res Function(GithubEventIssueModel) then) =
      _$GithubEventIssueModelCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      GithubEventUserModel? user,
      int? number,
      String? body,
      dynamic pullRequest,
      String? state,
      int? comments,
      bool? merged,
      DateTime? createdAt});

  $GithubEventUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$GithubEventIssueModelCopyWithImpl<$Res>
    implements $GithubEventIssueModelCopyWith<$Res> {
  _$GithubEventIssueModelCopyWithImpl(this._value, this._then);

  final GithubEventIssueModel _value;
  // ignore: unused_field
  final $Res Function(GithubEventIssueModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? user = freezed,
    Object? number = freezed,
    Object? body = freezed,
    Object? pullRequest = freezed,
    Object? state = freezed,
    Object? comments = freezed,
    Object? merged = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GithubEventUserModel?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      pullRequest: pullRequest == freezed
          ? _value.pullRequest
          : pullRequest // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      merged: merged == freezed
          ? _value.merged
          : merged // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $GithubEventUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $GithubEventUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$GithubEventIssueModelCopyWith<$Res>
    implements $GithubEventIssueModelCopyWith<$Res> {
  factory _$GithubEventIssueModelCopyWith(_GithubEventIssueModel value,
          $Res Function(_GithubEventIssueModel) then) =
      __$GithubEventIssueModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      GithubEventUserModel? user,
      int? number,
      String? body,
      dynamic pullRequest,
      String? state,
      int? comments,
      bool? merged,
      DateTime? createdAt});

  @override
  $GithubEventUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$GithubEventIssueModelCopyWithImpl<$Res>
    extends _$GithubEventIssueModelCopyWithImpl<$Res>
    implements _$GithubEventIssueModelCopyWith<$Res> {
  __$GithubEventIssueModelCopyWithImpl(_GithubEventIssueModel _value,
      $Res Function(_GithubEventIssueModel) _then)
      : super(_value, (v) => _then(v as _GithubEventIssueModel));

  @override
  _GithubEventIssueModel get _value => super._value as _GithubEventIssueModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? user = freezed,
    Object? number = freezed,
    Object? body = freezed,
    Object? pullRequest = freezed,
    Object? state = freezed,
    Object? comments = freezed,
    Object? merged = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GithubEventIssueModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GithubEventUserModel?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      pullRequest: pullRequest == freezed
          ? _value.pullRequest
          : pullRequest // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      merged: merged == freezed
          ? _value.merged
          : merged // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubEventIssueModel implements _GithubEventIssueModel {
  const _$_GithubEventIssueModel(
      {required this.title,
      required this.user,
      required this.number,
      required this.body,
      required this.pullRequest,
      required this.state,
      required this.comments,
      required this.merged,
      required this.createdAt});

  factory _$_GithubEventIssueModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubEventIssueModelFromJson(json);

  @override
  final String? title;
  @override
  final GithubEventUserModel? user;
  @override
  final int? number;
  @override
  final String? body;
  @override
  final dynamic pullRequest;
  @override
  final String? state;
  @override
  final int? comments;
  @override
  final bool? merged;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'GithubEventIssueModel(title: $title, user: $user, number: $number, body: $body, pullRequest: $pullRequest, state: $state, comments: $comments, merged: $merged, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventIssueModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.pullRequest, pullRequest) ||
                const DeepCollectionEquality()
                    .equals(other.pullRequest, pullRequest)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.merged, merged) ||
                const DeepCollectionEquality().equals(other.merged, merged)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(pullRequest) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(merged) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GithubEventIssueModelCopyWith<_GithubEventIssueModel> get copyWith =>
      __$GithubEventIssueModelCopyWithImpl<_GithubEventIssueModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubEventIssueModelToJson(this);
  }
}

abstract class _GithubEventIssueModel implements GithubEventIssueModel {
  const factory _GithubEventIssueModel(
      {required String? title,
      required GithubEventUserModel? user,
      required int? number,
      required String? body,
      required dynamic pullRequest,
      required String? state,
      required int? comments,
      required bool? merged,
      required DateTime? createdAt}) = _$_GithubEventIssueModel;

  factory _GithubEventIssueModel.fromJson(Map<String, dynamic> json) =
      _$_GithubEventIssueModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  GithubEventUserModel? get user => throw _privateConstructorUsedError;
  @override
  int? get number => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  dynamic get pullRequest => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  int? get comments => throw _privateConstructorUsedError;
  @override
  bool? get merged => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventIssueModelCopyWith<_GithubEventIssueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubEventCommentModel _$GithubEventCommentModelFromJson(
    Map<String, dynamic> json) {
  return _GithubEventCommentModel.fromJson(json);
}

/// @nodoc
class _$GithubEventCommentModelTearOff {
  const _$GithubEventCommentModelTearOff();

  _GithubEventCommentModel call(
      {required String? body,
      required GithubEventUserModel? user,
      required String? commitId,
      required String? htmlUrl}) {
    return _GithubEventCommentModel(
      body: body,
      user: user,
      commitId: commitId,
      htmlUrl: htmlUrl,
    );
  }

  GithubEventCommentModel fromJson(Map<String, Object> json) {
    return GithubEventCommentModel.fromJson(json);
  }
}

/// @nodoc
const $GithubEventCommentModel = _$GithubEventCommentModelTearOff();

/// @nodoc
mixin _$GithubEventCommentModel {
  String? get body => throw _privateConstructorUsedError;
  GithubEventUserModel? get user => throw _privateConstructorUsedError;
  String? get commitId => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubEventCommentModelCopyWith<GithubEventCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventCommentModelCopyWith<$Res> {
  factory $GithubEventCommentModelCopyWith(GithubEventCommentModel value,
          $Res Function(GithubEventCommentModel) then) =
      _$GithubEventCommentModelCopyWithImpl<$Res>;
  $Res call(
      {String? body,
      GithubEventUserModel? user,
      String? commitId,
      String? htmlUrl});

  $GithubEventUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$GithubEventCommentModelCopyWithImpl<$Res>
    implements $GithubEventCommentModelCopyWith<$Res> {
  _$GithubEventCommentModelCopyWithImpl(this._value, this._then);

  final GithubEventCommentModel _value;
  // ignore: unused_field
  final $Res Function(GithubEventCommentModel) _then;

  @override
  $Res call({
    Object? body = freezed,
    Object? user = freezed,
    Object? commitId = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GithubEventUserModel?,
      commitId: commitId == freezed
          ? _value.commitId
          : commitId // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $GithubEventUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $GithubEventUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$GithubEventCommentModelCopyWith<$Res>
    implements $GithubEventCommentModelCopyWith<$Res> {
  factory _$GithubEventCommentModelCopyWith(_GithubEventCommentModel value,
          $Res Function(_GithubEventCommentModel) then) =
      __$GithubEventCommentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? body,
      GithubEventUserModel? user,
      String? commitId,
      String? htmlUrl});

  @override
  $GithubEventUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$GithubEventCommentModelCopyWithImpl<$Res>
    extends _$GithubEventCommentModelCopyWithImpl<$Res>
    implements _$GithubEventCommentModelCopyWith<$Res> {
  __$GithubEventCommentModelCopyWithImpl(_GithubEventCommentModel _value,
      $Res Function(_GithubEventCommentModel) _then)
      : super(_value, (v) => _then(v as _GithubEventCommentModel));

  @override
  _GithubEventCommentModel get _value =>
      super._value as _GithubEventCommentModel;

  @override
  $Res call({
    Object? body = freezed,
    Object? user = freezed,
    Object? commitId = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_GithubEventCommentModel(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GithubEventUserModel?,
      commitId: commitId == freezed
          ? _value.commitId
          : commitId // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubEventCommentModel implements _GithubEventCommentModel {
  const _$_GithubEventCommentModel(
      {required this.body,
      required this.user,
      required this.commitId,
      required this.htmlUrl});

  factory _$_GithubEventCommentModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubEventCommentModelFromJson(json);

  @override
  final String? body;
  @override
  final GithubEventUserModel? user;
  @override
  final String? commitId;
  @override
  final String? htmlUrl;

  @override
  String toString() {
    return 'GithubEventCommentModel(body: $body, user: $user, commitId: $commitId, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventCommentModel &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.commitId, commitId) ||
                const DeepCollectionEquality()
                    .equals(other.commitId, commitId)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(commitId) ^
      const DeepCollectionEquality().hash(htmlUrl);

  @JsonKey(ignore: true)
  @override
  _$GithubEventCommentModelCopyWith<_GithubEventCommentModel> get copyWith =>
      __$GithubEventCommentModelCopyWithImpl<_GithubEventCommentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubEventCommentModelToJson(this);
  }
}

abstract class _GithubEventCommentModel implements GithubEventCommentModel {
  const factory _GithubEventCommentModel(
      {required String? body,
      required GithubEventUserModel? user,
      required String? commitId,
      required String? htmlUrl}) = _$_GithubEventCommentModel;

  factory _GithubEventCommentModel.fromJson(Map<String, dynamic> json) =
      _$_GithubEventCommentModel.fromJson;

  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  GithubEventUserModel? get user => throw _privateConstructorUsedError;
  @override
  String? get commitId => throw _privateConstructorUsedError;
  @override
  String? get htmlUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventCommentModelCopyWith<_GithubEventCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubEventCommitModel _$GithubEventCommitModelFromJson(
    Map<String, dynamic> json) {
  return _GithubEventCommitModel.fromJson(json);
}

/// @nodoc
class _$GithubEventCommitModelTearOff {
  const _$GithubEventCommitModelTearOff();

  _GithubEventCommitModel call(
      {required String? sha, required String? message}) {
    return _GithubEventCommitModel(
      sha: sha,
      message: message,
    );
  }

  GithubEventCommitModel fromJson(Map<String, Object> json) {
    return GithubEventCommitModel.fromJson(json);
  }
}

/// @nodoc
const $GithubEventCommitModel = _$GithubEventCommitModelTearOff();

/// @nodoc
mixin _$GithubEventCommitModel {
  String? get sha => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubEventCommitModelCopyWith<GithubEventCommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventCommitModelCopyWith<$Res> {
  factory $GithubEventCommitModelCopyWith(GithubEventCommitModel value,
          $Res Function(GithubEventCommitModel) then) =
      _$GithubEventCommitModelCopyWithImpl<$Res>;
  $Res call({String? sha, String? message});
}

/// @nodoc
class _$GithubEventCommitModelCopyWithImpl<$Res>
    implements $GithubEventCommitModelCopyWith<$Res> {
  _$GithubEventCommitModelCopyWithImpl(this._value, this._then);

  final GithubEventCommitModel _value;
  // ignore: unused_field
  final $Res Function(GithubEventCommitModel) _then;

  @override
  $Res call({
    Object? sha = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      sha: sha == freezed
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubEventCommitModelCopyWith<$Res>
    implements $GithubEventCommitModelCopyWith<$Res> {
  factory _$GithubEventCommitModelCopyWith(_GithubEventCommitModel value,
          $Res Function(_GithubEventCommitModel) then) =
      __$GithubEventCommitModelCopyWithImpl<$Res>;
  @override
  $Res call({String? sha, String? message});
}

/// @nodoc
class __$GithubEventCommitModelCopyWithImpl<$Res>
    extends _$GithubEventCommitModelCopyWithImpl<$Res>
    implements _$GithubEventCommitModelCopyWith<$Res> {
  __$GithubEventCommitModelCopyWithImpl(_GithubEventCommitModel _value,
      $Res Function(_GithubEventCommitModel) _then)
      : super(_value, (v) => _then(v as _GithubEventCommitModel));

  @override
  _GithubEventCommitModel get _value => super._value as _GithubEventCommitModel;

  @override
  $Res call({
    Object? sha = freezed,
    Object? message = freezed,
  }) {
    return _then(_GithubEventCommitModel(
      sha: sha == freezed
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubEventCommitModel implements _GithubEventCommitModel {
  const _$_GithubEventCommitModel({required this.sha, required this.message});

  factory _$_GithubEventCommitModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubEventCommitModelFromJson(json);

  @override
  final String? sha;
  @override
  final String? message;

  @override
  String toString() {
    return 'GithubEventCommitModel(sha: $sha, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventCommitModel &&
            (identical(other.sha, sha) ||
                const DeepCollectionEquality().equals(other.sha, sha)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sha) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$GithubEventCommitModelCopyWith<_GithubEventCommitModel> get copyWith =>
      __$GithubEventCommitModelCopyWithImpl<_GithubEventCommitModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubEventCommitModelToJson(this);
  }
}

abstract class _GithubEventCommitModel implements GithubEventCommitModel {
  const factory _GithubEventCommitModel(
      {required String? sha,
      required String? message}) = _$_GithubEventCommitModel;

  factory _GithubEventCommitModel.fromJson(Map<String, dynamic> json) =
      _$_GithubEventCommitModel.fromJson;

  @override
  String? get sha => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventCommitModelCopyWith<_GithubEventCommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubEventReleaseModel _$GithubEventReleaseModelFromJson(
    Map<String, dynamic> json) {
  return _GithubEventReleaseModel.fromJson(json);
}

/// @nodoc
class _$GithubEventReleaseModelTearOff {
  const _$GithubEventReleaseModelTearOff();

  _GithubEventReleaseModel call(
      {required String? htmlUrl, required String? tagName}) {
    return _GithubEventReleaseModel(
      htmlUrl: htmlUrl,
      tagName: tagName,
    );
  }

  GithubEventReleaseModel fromJson(Map<String, Object> json) {
    return GithubEventReleaseModel.fromJson(json);
  }
}

/// @nodoc
const $GithubEventReleaseModel = _$GithubEventReleaseModelTearOff();

/// @nodoc
mixin _$GithubEventReleaseModel {
  String? get htmlUrl => throw _privateConstructorUsedError;
  String? get tagName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubEventReleaseModelCopyWith<GithubEventReleaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventReleaseModelCopyWith<$Res> {
  factory $GithubEventReleaseModelCopyWith(GithubEventReleaseModel value,
          $Res Function(GithubEventReleaseModel) then) =
      _$GithubEventReleaseModelCopyWithImpl<$Res>;
  $Res call({String? htmlUrl, String? tagName});
}

/// @nodoc
class _$GithubEventReleaseModelCopyWithImpl<$Res>
    implements $GithubEventReleaseModelCopyWith<$Res> {
  _$GithubEventReleaseModelCopyWithImpl(this._value, this._then);

  final GithubEventReleaseModel _value;
  // ignore: unused_field
  final $Res Function(GithubEventReleaseModel) _then;

  @override
  $Res call({
    Object? htmlUrl = freezed,
    Object? tagName = freezed,
  }) {
    return _then(_value.copyWith(
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tagName: tagName == freezed
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubEventReleaseModelCopyWith<$Res>
    implements $GithubEventReleaseModelCopyWith<$Res> {
  factory _$GithubEventReleaseModelCopyWith(_GithubEventReleaseModel value,
          $Res Function(_GithubEventReleaseModel) then) =
      __$GithubEventReleaseModelCopyWithImpl<$Res>;
  @override
  $Res call({String? htmlUrl, String? tagName});
}

/// @nodoc
class __$GithubEventReleaseModelCopyWithImpl<$Res>
    extends _$GithubEventReleaseModelCopyWithImpl<$Res>
    implements _$GithubEventReleaseModelCopyWith<$Res> {
  __$GithubEventReleaseModelCopyWithImpl(_GithubEventReleaseModel _value,
      $Res Function(_GithubEventReleaseModel) _then)
      : super(_value, (v) => _then(v as _GithubEventReleaseModel));

  @override
  _GithubEventReleaseModel get _value =>
      super._value as _GithubEventReleaseModel;

  @override
  $Res call({
    Object? htmlUrl = freezed,
    Object? tagName = freezed,
  }) {
    return _then(_GithubEventReleaseModel(
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tagName: tagName == freezed
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubEventReleaseModel implements _GithubEventReleaseModel {
  const _$_GithubEventReleaseModel(
      {required this.htmlUrl, required this.tagName});

  factory _$_GithubEventReleaseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubEventReleaseModelFromJson(json);

  @override
  final String? htmlUrl;
  @override
  final String? tagName;

  @override
  String toString() {
    return 'GithubEventReleaseModel(htmlUrl: $htmlUrl, tagName: $tagName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventReleaseModel &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality()
                    .equals(other.htmlUrl, htmlUrl)) &&
            (identical(other.tagName, tagName) ||
                const DeepCollectionEquality().equals(other.tagName, tagName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(htmlUrl) ^
      const DeepCollectionEquality().hash(tagName);

  @JsonKey(ignore: true)
  @override
  _$GithubEventReleaseModelCopyWith<_GithubEventReleaseModel> get copyWith =>
      __$GithubEventReleaseModelCopyWithImpl<_GithubEventReleaseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubEventReleaseModelToJson(this);
  }
}

abstract class _GithubEventReleaseModel implements GithubEventReleaseModel {
  const factory _GithubEventReleaseModel(
      {required String? htmlUrl,
      required String? tagName}) = _$_GithubEventReleaseModel;

  factory _GithubEventReleaseModel.fromJson(Map<String, dynamic> json) =
      _$_GithubEventReleaseModel.fromJson;

  @override
  String? get htmlUrl => throw _privateConstructorUsedError;
  @override
  String? get tagName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventReleaseModelCopyWith<_GithubEventReleaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubNotificationItemModel _$GithubNotificationItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubNotificationItemModel.fromJson(json);
}

/// @nodoc
class _$GithubNotificationItemModelTearOff {
  const _$GithubNotificationItemModelTearOff();

  _GithubNotificationItemModel call(
      {required String? id,
      required GithubNotificationItemSubjectModel? subject,
      required DateTime? updatedAt,
      required GithubNotificationItemRepoModel? repository,
      required bool? unread,
      required String key}) {
    return _GithubNotificationItemModel(
      id: id,
      subject: subject,
      updatedAt: updatedAt,
      repository: repository,
      unread: unread,
      key: key,
    );
  }

  GithubNotificationItemModel fromJson(Map<String, Object> json) {
    return GithubNotificationItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubNotificationItemModel = _$GithubNotificationItemModelTearOff();

/// @nodoc
mixin _$GithubNotificationItemModel {
  String? get id => throw _privateConstructorUsedError;
  GithubNotificationItemSubjectModel? get subject =>
      throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  GithubNotificationItemRepoModel? get repository =>
      throw _privateConstructorUsedError;
  bool? get unread => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubNotificationItemModelCopyWith<GithubNotificationItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubNotificationItemModelCopyWith<$Res> {
  factory $GithubNotificationItemModelCopyWith(
          GithubNotificationItemModel value,
          $Res Function(GithubNotificationItemModel) then) =
      _$GithubNotificationItemModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      GithubNotificationItemSubjectModel? subject,
      DateTime? updatedAt,
      GithubNotificationItemRepoModel? repository,
      bool? unread,
      String key});

  $GithubNotificationItemSubjectModelCopyWith<$Res>? get subject;
  $GithubNotificationItemRepoModelCopyWith<$Res>? get repository;
}

/// @nodoc
class _$GithubNotificationItemModelCopyWithImpl<$Res>
    implements $GithubNotificationItemModelCopyWith<$Res> {
  _$GithubNotificationItemModelCopyWithImpl(this._value, this._then);

  final GithubNotificationItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubNotificationItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? updatedAt = freezed,
    Object? repository = freezed,
    Object? unread = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as GithubNotificationItemSubjectModel?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as GithubNotificationItemRepoModel?,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as bool?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GithubNotificationItemSubjectModelCopyWith<$Res>? get subject {
    if (_value.subject == null) {
      return null;
    }

    return $GithubNotificationItemSubjectModelCopyWith<$Res>(_value.subject!,
        (value) {
      return _then(_value.copyWith(subject: value));
    });
  }

  @override
  $GithubNotificationItemRepoModelCopyWith<$Res>? get repository {
    if (_value.repository == null) {
      return null;
    }

    return $GithubNotificationItemRepoModelCopyWith<$Res>(_value.repository!,
        (value) {
      return _then(_value.copyWith(repository: value));
    });
  }
}

/// @nodoc
abstract class _$GithubNotificationItemModelCopyWith<$Res>
    implements $GithubNotificationItemModelCopyWith<$Res> {
  factory _$GithubNotificationItemModelCopyWith(
          _GithubNotificationItemModel value,
          $Res Function(_GithubNotificationItemModel) then) =
      __$GithubNotificationItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      GithubNotificationItemSubjectModel? subject,
      DateTime? updatedAt,
      GithubNotificationItemRepoModel? repository,
      bool? unread,
      String key});

  @override
  $GithubNotificationItemSubjectModelCopyWith<$Res>? get subject;
  @override
  $GithubNotificationItemRepoModelCopyWith<$Res>? get repository;
}

/// @nodoc
class __$GithubNotificationItemModelCopyWithImpl<$Res>
    extends _$GithubNotificationItemModelCopyWithImpl<$Res>
    implements _$GithubNotificationItemModelCopyWith<$Res> {
  __$GithubNotificationItemModelCopyWithImpl(
      _GithubNotificationItemModel _value,
      $Res Function(_GithubNotificationItemModel) _then)
      : super(_value, (v) => _then(v as _GithubNotificationItemModel));

  @override
  _GithubNotificationItemModel get _value =>
      super._value as _GithubNotificationItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? updatedAt = freezed,
    Object? repository = freezed,
    Object? unread = freezed,
    Object? key = freezed,
  }) {
    return _then(_GithubNotificationItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as GithubNotificationItemSubjectModel?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as GithubNotificationItemRepoModel?,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as bool?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubNotificationItemModel implements _GithubNotificationItemModel {
  const _$_GithubNotificationItemModel(
      {required this.id,
      required this.subject,
      required this.updatedAt,
      required this.repository,
      required this.unread,
      required this.key});

  factory _$_GithubNotificationItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubNotificationItemModelFromJson(json);

  @override
  final String? id;
  @override
  final GithubNotificationItemSubjectModel? subject;
  @override
  final DateTime? updatedAt;
  @override
  final GithubNotificationItemRepoModel? repository;
  @override
  final bool? unread;
  @override
  final String key;

  @override
  String toString() {
    return 'GithubNotificationItemModel(id: $id, subject: $subject, updatedAt: $updatedAt, repository: $repository, unread: $unread, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubNotificationItemModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.repository, repository) ||
                const DeepCollectionEquality()
                    .equals(other.repository, repository)) &&
            (identical(other.unread, unread) ||
                const DeepCollectionEquality().equals(other.unread, unread)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(repository) ^
      const DeepCollectionEquality().hash(unread) ^
      const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  _$GithubNotificationItemModelCopyWith<_GithubNotificationItemModel>
      get copyWith => __$GithubNotificationItemModelCopyWithImpl<
          _GithubNotificationItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubNotificationItemModelToJson(this);
  }
}

abstract class _GithubNotificationItemModel
    implements GithubNotificationItemModel {
  const factory _GithubNotificationItemModel(
      {required String? id,
      required GithubNotificationItemSubjectModel? subject,
      required DateTime? updatedAt,
      required GithubNotificationItemRepoModel? repository,
      required bool? unread,
      required String key}) = _$_GithubNotificationItemModel;

  factory _GithubNotificationItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubNotificationItemModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  GithubNotificationItemSubjectModel? get subject =>
      throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  GithubNotificationItemRepoModel? get repository =>
      throw _privateConstructorUsedError;
  @override
  bool? get unread => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubNotificationItemModelCopyWith<_GithubNotificationItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

GithubNotificationItemSubjectModel _$GithubNotificationItemSubjectModelFromJson(
    Map<String, dynamic> json) {
  return _GithubNotificationItemSubjectModel.fromJson(json);
}

/// @nodoc
class _$GithubNotificationItemSubjectModelTearOff {
  const _$GithubNotificationItemSubjectModelTearOff();

  _GithubNotificationItemSubjectModel call(
      {required String? title,
      required String? type,
      required String? url,
      required int? number}) {
    return _GithubNotificationItemSubjectModel(
      title: title,
      type: type,
      url: url,
      number: number,
    );
  }

  GithubNotificationItemSubjectModel fromJson(Map<String, Object> json) {
    return GithubNotificationItemSubjectModel.fromJson(json);
  }
}

/// @nodoc
const $GithubNotificationItemSubjectModel =
    _$GithubNotificationItemSubjectModelTearOff();

/// @nodoc
mixin _$GithubNotificationItemSubjectModel {
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubNotificationItemSubjectModelCopyWith<
          GithubNotificationItemSubjectModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubNotificationItemSubjectModelCopyWith<$Res> {
  factory $GithubNotificationItemSubjectModelCopyWith(
          GithubNotificationItemSubjectModel value,
          $Res Function(GithubNotificationItemSubjectModel) then) =
      _$GithubNotificationItemSubjectModelCopyWithImpl<$Res>;
  $Res call({String? title, String? type, String? url, int? number});
}

/// @nodoc
class _$GithubNotificationItemSubjectModelCopyWithImpl<$Res>
    implements $GithubNotificationItemSubjectModelCopyWith<$Res> {
  _$GithubNotificationItemSubjectModelCopyWithImpl(this._value, this._then);

  final GithubNotificationItemSubjectModel _value;
  // ignore: unused_field
  final $Res Function(GithubNotificationItemSubjectModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? url = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GithubNotificationItemSubjectModelCopyWith<$Res>
    implements $GithubNotificationItemSubjectModelCopyWith<$Res> {
  factory _$GithubNotificationItemSubjectModelCopyWith(
          _GithubNotificationItemSubjectModel value,
          $Res Function(_GithubNotificationItemSubjectModel) then) =
      __$GithubNotificationItemSubjectModelCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? type, String? url, int? number});
}

/// @nodoc
class __$GithubNotificationItemSubjectModelCopyWithImpl<$Res>
    extends _$GithubNotificationItemSubjectModelCopyWithImpl<$Res>
    implements _$GithubNotificationItemSubjectModelCopyWith<$Res> {
  __$GithubNotificationItemSubjectModelCopyWithImpl(
      _GithubNotificationItemSubjectModel _value,
      $Res Function(_GithubNotificationItemSubjectModel) _then)
      : super(_value, (v) => _then(v as _GithubNotificationItemSubjectModel));

  @override
  _GithubNotificationItemSubjectModel get _value =>
      super._value as _GithubNotificationItemSubjectModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? url = freezed,
    Object? number = freezed,
  }) {
    return _then(_GithubNotificationItemSubjectModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubNotificationItemSubjectModel
    implements _GithubNotificationItemSubjectModel {
  const _$_GithubNotificationItemSubjectModel(
      {required this.title,
      required this.type,
      required this.url,
      required this.number});

  factory _$_GithubNotificationItemSubjectModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GithubNotificationItemSubjectModelFromJson(json);

  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? url;
  @override
  final int? number;

  @override
  String toString() {
    return 'GithubNotificationItemSubjectModel(title: $title, type: $type, url: $url, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubNotificationItemSubjectModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$GithubNotificationItemSubjectModelCopyWith<
          _GithubNotificationItemSubjectModel>
      get copyWith => __$GithubNotificationItemSubjectModelCopyWithImpl<
          _GithubNotificationItemSubjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubNotificationItemSubjectModelToJson(this);
  }
}

abstract class _GithubNotificationItemSubjectModel
    implements GithubNotificationItemSubjectModel {
  const factory _GithubNotificationItemSubjectModel(
      {required String? title,
      required String? type,
      required String? url,
      required int? number}) = _$_GithubNotificationItemSubjectModel;

  factory _GithubNotificationItemSubjectModel.fromJson(
          Map<String, dynamic> json) =
      _$_GithubNotificationItemSubjectModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  int? get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubNotificationItemSubjectModelCopyWith<
          _GithubNotificationItemSubjectModel>
      get copyWith => throw _privateConstructorUsedError;
}

GithubNotificationItemRepoModel _$GithubNotificationItemRepoModelFromJson(
    Map<String, dynamic> json) {
  return _GithubNotificationItemRepoModel.fromJson(json);
}

/// @nodoc
class _$GithubNotificationItemRepoModelTearOff {
  const _$GithubNotificationItemRepoModelTearOff();

  _GithubNotificationItemRepoModel call({required String? fullName}) {
    return _GithubNotificationItemRepoModel(
      fullName: fullName,
    );
  }

  GithubNotificationItemRepoModel fromJson(Map<String, Object> json) {
    return GithubNotificationItemRepoModel.fromJson(json);
  }
}

/// @nodoc
const $GithubNotificationItemRepoModel =
    _$GithubNotificationItemRepoModelTearOff();

/// @nodoc
mixin _$GithubNotificationItemRepoModel {
  String? get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubNotificationItemRepoModelCopyWith<GithubNotificationItemRepoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubNotificationItemRepoModelCopyWith<$Res> {
  factory $GithubNotificationItemRepoModelCopyWith(
          GithubNotificationItemRepoModel value,
          $Res Function(GithubNotificationItemRepoModel) then) =
      _$GithubNotificationItemRepoModelCopyWithImpl<$Res>;
  $Res call({String? fullName});
}

/// @nodoc
class _$GithubNotificationItemRepoModelCopyWithImpl<$Res>
    implements $GithubNotificationItemRepoModelCopyWith<$Res> {
  _$GithubNotificationItemRepoModelCopyWithImpl(this._value, this._then);

  final GithubNotificationItemRepoModel _value;
  // ignore: unused_field
  final $Res Function(GithubNotificationItemRepoModel) _then;

  @override
  $Res call({
    Object? fullName = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubNotificationItemRepoModelCopyWith<$Res>
    implements $GithubNotificationItemRepoModelCopyWith<$Res> {
  factory _$GithubNotificationItemRepoModelCopyWith(
          _GithubNotificationItemRepoModel value,
          $Res Function(_GithubNotificationItemRepoModel) then) =
      __$GithubNotificationItemRepoModelCopyWithImpl<$Res>;
  @override
  $Res call({String? fullName});
}

/// @nodoc
class __$GithubNotificationItemRepoModelCopyWithImpl<$Res>
    extends _$GithubNotificationItemRepoModelCopyWithImpl<$Res>
    implements _$GithubNotificationItemRepoModelCopyWith<$Res> {
  __$GithubNotificationItemRepoModelCopyWithImpl(
      _GithubNotificationItemRepoModel _value,
      $Res Function(_GithubNotificationItemRepoModel) _then)
      : super(_value, (v) => _then(v as _GithubNotificationItemRepoModel));

  @override
  _GithubNotificationItemRepoModel get _value =>
      super._value as _GithubNotificationItemRepoModel;

  @override
  $Res call({
    Object? fullName = freezed,
  }) {
    return _then(_GithubNotificationItemRepoModel(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubNotificationItemRepoModel
    implements _GithubNotificationItemRepoModel {
  const _$_GithubNotificationItemRepoModel({required this.fullName});

  factory _$_GithubNotificationItemRepoModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GithubNotificationItemRepoModelFromJson(json);

  @override
  final String? fullName;

  @override
  String toString() {
    return 'GithubNotificationItemRepoModel(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubNotificationItemRepoModel &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fullName);

  @JsonKey(ignore: true)
  @override
  _$GithubNotificationItemRepoModelCopyWith<_GithubNotificationItemRepoModel>
      get copyWith => __$GithubNotificationItemRepoModelCopyWithImpl<
          _GithubNotificationItemRepoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubNotificationItemRepoModelToJson(this);
  }
}

abstract class _GithubNotificationItemRepoModel
    implements GithubNotificationItemRepoModel {
  const factory _GithubNotificationItemRepoModel({required String? fullName}) =
      _$_GithubNotificationItemRepoModel;

  factory _GithubNotificationItemRepoModel.fromJson(Map<String, dynamic> json) =
      _$_GithubNotificationItemRepoModel.fromJson;

  @override
  String? get fullName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubNotificationItemRepoModelCopyWith<_GithubNotificationItemRepoModel>
      get copyWith => throw _privateConstructorUsedError;
}

GithubTreeItemModel _$GithubTreeItemModelFromJson(Map<String, dynamic> json) {
  return _GithubTreeItemModel.fromJson(json);
}

/// @nodoc
class _$GithubTreeItemModelTearOff {
  const _$GithubTreeItemModelTearOff();

  _GithubTreeItemModel call(
      {required String? name,
      required String? path,
      required int? size,
      required String? type,
      required String? downloadUrl,
      required String? content}) {
    return _GithubTreeItemModel(
      name: name,
      path: path,
      size: size,
      type: type,
      downloadUrl: downloadUrl,
      content: content,
    );
  }

  GithubTreeItemModel fromJson(Map<String, Object> json) {
    return GithubTreeItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubTreeItemModel = _$GithubTreeItemModelTearOff();

/// @nodoc
mixin _$GithubTreeItemModel {
  String? get name => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get downloadUrl => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubTreeItemModelCopyWith<GithubTreeItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubTreeItemModelCopyWith<$Res> {
  factory $GithubTreeItemModelCopyWith(
          GithubTreeItemModel value, $Res Function(GithubTreeItemModel) then) =
      _$GithubTreeItemModelCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? path,
      int? size,
      String? type,
      String? downloadUrl,
      String? content});
}

/// @nodoc
class _$GithubTreeItemModelCopyWithImpl<$Res>
    implements $GithubTreeItemModelCopyWith<$Res> {
  _$GithubTreeItemModelCopyWithImpl(this._value, this._then);

  final GithubTreeItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubTreeItemModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? downloadUrl = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubTreeItemModelCopyWith<$Res>
    implements $GithubTreeItemModelCopyWith<$Res> {
  factory _$GithubTreeItemModelCopyWith(_GithubTreeItemModel value,
          $Res Function(_GithubTreeItemModel) then) =
      __$GithubTreeItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? path,
      int? size,
      String? type,
      String? downloadUrl,
      String? content});
}

/// @nodoc
class __$GithubTreeItemModelCopyWithImpl<$Res>
    extends _$GithubTreeItemModelCopyWithImpl<$Res>
    implements _$GithubTreeItemModelCopyWith<$Res> {
  __$GithubTreeItemModelCopyWithImpl(
      _GithubTreeItemModel _value, $Res Function(_GithubTreeItemModel) _then)
      : super(_value, (v) => _then(v as _GithubTreeItemModel));

  @override
  _GithubTreeItemModel get _value => super._value as _GithubTreeItemModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? downloadUrl = freezed,
    Object? content = freezed,
  }) {
    return _then(_GithubTreeItemModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubTreeItemModel implements _GithubTreeItemModel {
  const _$_GithubTreeItemModel(
      {required this.name,
      required this.path,
      required this.size,
      required this.type,
      required this.downloadUrl,
      required this.content});

  factory _$_GithubTreeItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubTreeItemModelFromJson(json);

  @override
  final String? name;
  @override
  final String? path;
  @override
  final int? size;
  @override
  final String? type;
  @override
  final String? downloadUrl;
  @override
  final String? content;

  @override
  String toString() {
    return 'GithubTreeItemModel(name: $name, path: $path, size: $size, type: $type, downloadUrl: $downloadUrl, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubTreeItemModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.downloadUrl, downloadUrl) ||
                const DeepCollectionEquality()
                    .equals(other.downloadUrl, downloadUrl)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(downloadUrl) ^
      const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$GithubTreeItemModelCopyWith<_GithubTreeItemModel> get copyWith =>
      __$GithubTreeItemModelCopyWithImpl<_GithubTreeItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubTreeItemModelToJson(this);
  }
}

abstract class _GithubTreeItemModel implements GithubTreeItemModel {
  const factory _GithubTreeItemModel(
      {required String? name,
      required String? path,
      required int? size,
      required String? type,
      required String? downloadUrl,
      required String? content}) = _$_GithubTreeItemModel;

  factory _GithubTreeItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubTreeItemModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get path => throw _privateConstructorUsedError;
  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get downloadUrl => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubTreeItemModelCopyWith<_GithubTreeItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubPagesItemModel _$GithubPagesItemModelFromJson(Map<String, dynamic> json) {
  return _GithubPagesItemModel.fromJson(json);
}

/// @nodoc
class _$GithubPagesItemModelTearOff {
  const _$GithubPagesItemModelTearOff();

  _GithubPagesItemModel call(
      {required String? pageName,
      required String? title,
      required String? action}) {
    return _GithubPagesItemModel(
      pageName: pageName,
      title: title,
      action: action,
    );
  }

  GithubPagesItemModel fromJson(Map<String, Object> json) {
    return GithubPagesItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubPagesItemModel = _$GithubPagesItemModelTearOff();

/// @nodoc
mixin _$GithubPagesItemModel {
  String? get pageName => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubPagesItemModelCopyWith<GithubPagesItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubPagesItemModelCopyWith<$Res> {
  factory $GithubPagesItemModelCopyWith(GithubPagesItemModel value,
          $Res Function(GithubPagesItemModel) then) =
      _$GithubPagesItemModelCopyWithImpl<$Res>;
  $Res call({String? pageName, String? title, String? action});
}

/// @nodoc
class _$GithubPagesItemModelCopyWithImpl<$Res>
    implements $GithubPagesItemModelCopyWith<$Res> {
  _$GithubPagesItemModelCopyWithImpl(this._value, this._then);

  final GithubPagesItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubPagesItemModel) _then;

  @override
  $Res call({
    Object? pageName = freezed,
    Object? title = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      pageName: pageName == freezed
          ? _value.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubPagesItemModelCopyWith<$Res>
    implements $GithubPagesItemModelCopyWith<$Res> {
  factory _$GithubPagesItemModelCopyWith(_GithubPagesItemModel value,
          $Res Function(_GithubPagesItemModel) then) =
      __$GithubPagesItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String? pageName, String? title, String? action});
}

/// @nodoc
class __$GithubPagesItemModelCopyWithImpl<$Res>
    extends _$GithubPagesItemModelCopyWithImpl<$Res>
    implements _$GithubPagesItemModelCopyWith<$Res> {
  __$GithubPagesItemModelCopyWithImpl(
      _GithubPagesItemModel _value, $Res Function(_GithubPagesItemModel) _then)
      : super(_value, (v) => _then(v as _GithubPagesItemModel));

  @override
  _GithubPagesItemModel get _value => super._value as _GithubPagesItemModel;

  @override
  $Res call({
    Object? pageName = freezed,
    Object? title = freezed,
    Object? action = freezed,
  }) {
    return _then(_GithubPagesItemModel(
      pageName: pageName == freezed
          ? _value.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubPagesItemModel implements _GithubPagesItemModel {
  const _$_GithubPagesItemModel(
      {required this.pageName, required this.title, required this.action});

  factory _$_GithubPagesItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubPagesItemModelFromJson(json);

  @override
  final String? pageName;
  @override
  final String? title;
  @override
  final String? action;

  @override
  String toString() {
    return 'GithubPagesItemModel(pageName: $pageName, title: $title, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubPagesItemModel &&
            (identical(other.pageName, pageName) ||
                const DeepCollectionEquality()
                    .equals(other.pageName, pageName)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$GithubPagesItemModelCopyWith<_GithubPagesItemModel> get copyWith =>
      __$GithubPagesItemModelCopyWithImpl<_GithubPagesItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubPagesItemModelToJson(this);
  }
}

abstract class _GithubPagesItemModel implements GithubPagesItemModel {
  const factory _GithubPagesItemModel(
      {required String? pageName,
      required String? title,
      required String? action}) = _$_GithubPagesItemModel;

  factory _GithubPagesItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubPagesItemModel.fromJson;

  @override
  String? get pageName => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubPagesItemModelCopyWith<_GithubPagesItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubSecurityItemModel _$GithubSecurityItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubSecurityItemModel.fromJson(json);
}

/// @nodoc
class _$GithubSecurityItemModelTearOff {
  const _$GithubSecurityItemModelTearOff();

  _GithubSecurityItemModel call(
      {required String? summary,
      required String? description,
      required String? severity}) {
    return _GithubSecurityItemModel(
      summary: summary,
      description: description,
      severity: severity,
    );
  }

  GithubSecurityItemModel fromJson(Map<String, Object> json) {
    return GithubSecurityItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubSecurityItemModel = _$GithubSecurityItemModelTearOff();

/// @nodoc
mixin _$GithubSecurityItemModel {
  String? get summary => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get severity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubSecurityItemModelCopyWith<GithubSecurityItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubSecurityItemModelCopyWith<$Res> {
  factory $GithubSecurityItemModelCopyWith(GithubSecurityItemModel value,
          $Res Function(GithubSecurityItemModel) then) =
      _$GithubSecurityItemModelCopyWithImpl<$Res>;
  $Res call({String? summary, String? description, String? severity});
}

/// @nodoc
class _$GithubSecurityItemModelCopyWithImpl<$Res>
    implements $GithubSecurityItemModelCopyWith<$Res> {
  _$GithubSecurityItemModelCopyWithImpl(this._value, this._then);

  final GithubSecurityItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubSecurityItemModel) _then;

  @override
  $Res call({
    Object? summary = freezed,
    Object? description = freezed,
    Object? severity = freezed,
  }) {
    return _then(_value.copyWith(
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: severity == freezed
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubSecurityItemModelCopyWith<$Res>
    implements $GithubSecurityItemModelCopyWith<$Res> {
  factory _$GithubSecurityItemModelCopyWith(_GithubSecurityItemModel value,
          $Res Function(_GithubSecurityItemModel) then) =
      __$GithubSecurityItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String? summary, String? description, String? severity});
}

/// @nodoc
class __$GithubSecurityItemModelCopyWithImpl<$Res>
    extends _$GithubSecurityItemModelCopyWithImpl<$Res>
    implements _$GithubSecurityItemModelCopyWith<$Res> {
  __$GithubSecurityItemModelCopyWithImpl(_GithubSecurityItemModel _value,
      $Res Function(_GithubSecurityItemModel) _then)
      : super(_value, (v) => _then(v as _GithubSecurityItemModel));

  @override
  _GithubSecurityItemModel get _value =>
      super._value as _GithubSecurityItemModel;

  @override
  $Res call({
    Object? summary = freezed,
    Object? description = freezed,
    Object? severity = freezed,
  }) {
    return _then(_GithubSecurityItemModel(
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: severity == freezed
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubSecurityItemModel implements _GithubSecurityItemModel {
  const _$_GithubSecurityItemModel(
      {required this.summary,
      required this.description,
      required this.severity});

  factory _$_GithubSecurityItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubSecurityItemModelFromJson(json);

  @override
  final String? summary;
  @override
  final String? description;
  @override
  final String? severity;

  @override
  String toString() {
    return 'GithubSecurityItemModel(summary: $summary, description: $description, severity: $severity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubSecurityItemModel &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.severity, severity) ||
                const DeepCollectionEquality()
                    .equals(other.severity, severity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(severity);

  @JsonKey(ignore: true)
  @override
  _$GithubSecurityItemModelCopyWith<_GithubSecurityItemModel> get copyWith =>
      __$GithubSecurityItemModelCopyWithImpl<_GithubSecurityItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubSecurityItemModelToJson(this);
  }
}

abstract class _GithubSecurityItemModel implements GithubSecurityItemModel {
  const factory _GithubSecurityItemModel(
      {required String? summary,
      required String? description,
      required String? severity}) = _$_GithubSecurityItemModel;

  factory _GithubSecurityItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubSecurityItemModel.fromJson;

  @override
  String? get summary => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get severity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubSecurityItemModelCopyWith<_GithubSecurityItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubAlertItemModel _$GithubAlertItemModelFromJson(Map<String, dynamic> json) {
  return _GithubAlertItemModel.fromJson(json);
}

/// @nodoc
class _$GithubAlertItemModelTearOff {
  const _$GithubAlertItemModelTearOff();

  _GithubAlertItemModel call(
      {required String? affectedPackageName, required String? affectedRange}) {
    return _GithubAlertItemModel(
      affectedPackageName: affectedPackageName,
      affectedRange: affectedRange,
    );
  }

  GithubAlertItemModel fromJson(Map<String, Object> json) {
    return GithubAlertItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubAlertItemModel = _$GithubAlertItemModelTearOff();

/// @nodoc
mixin _$GithubAlertItemModel {
  String? get affectedPackageName => throw _privateConstructorUsedError;
  String? get affectedRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubAlertItemModelCopyWith<GithubAlertItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubAlertItemModelCopyWith<$Res> {
  factory $GithubAlertItemModelCopyWith(GithubAlertItemModel value,
          $Res Function(GithubAlertItemModel) then) =
      _$GithubAlertItemModelCopyWithImpl<$Res>;
  $Res call({String? affectedPackageName, String? affectedRange});
}

/// @nodoc
class _$GithubAlertItemModelCopyWithImpl<$Res>
    implements $GithubAlertItemModelCopyWith<$Res> {
  _$GithubAlertItemModelCopyWithImpl(this._value, this._then);

  final GithubAlertItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubAlertItemModel) _then;

  @override
  $Res call({
    Object? affectedPackageName = freezed,
    Object? affectedRange = freezed,
  }) {
    return _then(_value.copyWith(
      affectedPackageName: affectedPackageName == freezed
          ? _value.affectedPackageName
          : affectedPackageName // ignore: cast_nullable_to_non_nullable
              as String?,
      affectedRange: affectedRange == freezed
          ? _value.affectedRange
          : affectedRange // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubAlertItemModelCopyWith<$Res>
    implements $GithubAlertItemModelCopyWith<$Res> {
  factory _$GithubAlertItemModelCopyWith(_GithubAlertItemModel value,
          $Res Function(_GithubAlertItemModel) then) =
      __$GithubAlertItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String? affectedPackageName, String? affectedRange});
}

/// @nodoc
class __$GithubAlertItemModelCopyWithImpl<$Res>
    extends _$GithubAlertItemModelCopyWithImpl<$Res>
    implements _$GithubAlertItemModelCopyWith<$Res> {
  __$GithubAlertItemModelCopyWithImpl(
      _GithubAlertItemModel _value, $Res Function(_GithubAlertItemModel) _then)
      : super(_value, (v) => _then(v as _GithubAlertItemModel));

  @override
  _GithubAlertItemModel get _value => super._value as _GithubAlertItemModel;

  @override
  $Res call({
    Object? affectedPackageName = freezed,
    Object? affectedRange = freezed,
  }) {
    return _then(_GithubAlertItemModel(
      affectedPackageName: affectedPackageName == freezed
          ? _value.affectedPackageName
          : affectedPackageName // ignore: cast_nullable_to_non_nullable
              as String?,
      affectedRange: affectedRange == freezed
          ? _value.affectedRange
          : affectedRange // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubAlertItemModel implements _GithubAlertItemModel {
  const _$_GithubAlertItemModel(
      {required this.affectedPackageName, required this.affectedRange});

  factory _$_GithubAlertItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubAlertItemModelFromJson(json);

  @override
  final String? affectedPackageName;
  @override
  final String? affectedRange;

  @override
  String toString() {
    return 'GithubAlertItemModel(affectedPackageName: $affectedPackageName, affectedRange: $affectedRange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubAlertItemModel &&
            (identical(other.affectedPackageName, affectedPackageName) ||
                const DeepCollectionEquality()
                    .equals(other.affectedPackageName, affectedPackageName)) &&
            (identical(other.affectedRange, affectedRange) ||
                const DeepCollectionEquality()
                    .equals(other.affectedRange, affectedRange)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(affectedPackageName) ^
      const DeepCollectionEquality().hash(affectedRange);

  @JsonKey(ignore: true)
  @override
  _$GithubAlertItemModelCopyWith<_GithubAlertItemModel> get copyWith =>
      __$GithubAlertItemModelCopyWithImpl<_GithubAlertItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubAlertItemModelToJson(this);
  }
}

abstract class _GithubAlertItemModel implements GithubAlertItemModel {
  const factory _GithubAlertItemModel(
      {required String? affectedPackageName,
      required String? affectedRange}) = _$_GithubAlertItemModel;

  factory _GithubAlertItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubAlertItemModel.fromJson;

  @override
  String? get affectedPackageName => throw _privateConstructorUsedError;
  @override
  String? get affectedRange => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubAlertItemModelCopyWith<_GithubAlertItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubProjectItemModel _$GithubProjectItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubProjectItemModel.fromJson(json);
}

/// @nodoc
class _$GithubProjectItemModelTearOff {
  const _$GithubProjectItemModelTearOff();

  _GithubProjectItemModel call(
      {required String? name,
      required String? state,
      required String? body,
      required String? htmlUrl}) {
    return _GithubProjectItemModel(
      name: name,
      state: state,
      body: body,
      htmlUrl: htmlUrl,
    );
  }

  GithubProjectItemModel fromJson(Map<String, Object> json) {
    return GithubProjectItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubProjectItemModel = _$GithubProjectItemModelTearOff();

/// @nodoc
mixin _$GithubProjectItemModel {
  String? get name => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubProjectItemModelCopyWith<GithubProjectItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubProjectItemModelCopyWith<$Res> {
  factory $GithubProjectItemModelCopyWith(GithubProjectItemModel value,
          $Res Function(GithubProjectItemModel) then) =
      _$GithubProjectItemModelCopyWithImpl<$Res>;
  $Res call({String? name, String? state, String? body, String? htmlUrl});
}

/// @nodoc
class _$GithubProjectItemModelCopyWithImpl<$Res>
    implements $GithubProjectItemModelCopyWith<$Res> {
  _$GithubProjectItemModelCopyWithImpl(this._value, this._then);

  final GithubProjectItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubProjectItemModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? state = freezed,
    Object? body = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubProjectItemModelCopyWith<$Res>
    implements $GithubProjectItemModelCopyWith<$Res> {
  factory _$GithubProjectItemModelCopyWith(_GithubProjectItemModel value,
          $Res Function(_GithubProjectItemModel) then) =
      __$GithubProjectItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? state, String? body, String? htmlUrl});
}

/// @nodoc
class __$GithubProjectItemModelCopyWithImpl<$Res>
    extends _$GithubProjectItemModelCopyWithImpl<$Res>
    implements _$GithubProjectItemModelCopyWith<$Res> {
  __$GithubProjectItemModelCopyWithImpl(_GithubProjectItemModel _value,
      $Res Function(_GithubProjectItemModel) _then)
      : super(_value, (v) => _then(v as _GithubProjectItemModel));

  @override
  _GithubProjectItemModel get _value => super._value as _GithubProjectItemModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? state = freezed,
    Object? body = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_GithubProjectItemModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubProjectItemModel implements _GithubProjectItemModel {
  const _$_GithubProjectItemModel(
      {required this.name,
      required this.state,
      required this.body,
      required this.htmlUrl});

  factory _$_GithubProjectItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubProjectItemModelFromJson(json);

  @override
  final String? name;
  @override
  final String? state;
  @override
  final String? body;
  @override
  final String? htmlUrl;

  @override
  String toString() {
    return 'GithubProjectItemModel(name: $name, state: $state, body: $body, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubProjectItemModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(htmlUrl);

  @JsonKey(ignore: true)
  @override
  _$GithubProjectItemModelCopyWith<_GithubProjectItemModel> get copyWith =>
      __$GithubProjectItemModelCopyWithImpl<_GithubProjectItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubProjectItemModelToJson(this);
  }
}

abstract class _GithubProjectItemModel implements GithubProjectItemModel {
  const factory _GithubProjectItemModel(
      {required String? name,
      required String? state,
      required String? body,
      required String? htmlUrl}) = _$_GithubProjectItemModel;

  factory _GithubProjectItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubProjectItemModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  String? get htmlUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubProjectItemModelCopyWith<_GithubProjectItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubProjectColumnItemModel _$GithubProjectColumnItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubProjectColumnItemModel.fromJson(json);
}

/// @nodoc
class _$GithubProjectColumnItemModelTearOff {
  const _$GithubProjectColumnItemModelTearOff();

  _GithubProjectColumnItemModel call(
      {required String? htmlUrl,
      required String? columnsUrl,
      required String? name}) {
    return _GithubProjectColumnItemModel(
      htmlUrl: htmlUrl,
      columnsUrl: columnsUrl,
      name: name,
    );
  }

  GithubProjectColumnItemModel fromJson(Map<String, Object> json) {
    return GithubProjectColumnItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubProjectColumnItemModel = _$GithubProjectColumnItemModelTearOff();

/// @nodoc
mixin _$GithubProjectColumnItemModel {
  String? get htmlUrl => throw _privateConstructorUsedError;
  String? get columnsUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubProjectColumnItemModelCopyWith<GithubProjectColumnItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubProjectColumnItemModelCopyWith<$Res> {
  factory $GithubProjectColumnItemModelCopyWith(
          GithubProjectColumnItemModel value,
          $Res Function(GithubProjectColumnItemModel) then) =
      _$GithubProjectColumnItemModelCopyWithImpl<$Res>;
  $Res call({String? htmlUrl, String? columnsUrl, String? name});
}

/// @nodoc
class _$GithubProjectColumnItemModelCopyWithImpl<$Res>
    implements $GithubProjectColumnItemModelCopyWith<$Res> {
  _$GithubProjectColumnItemModelCopyWithImpl(this._value, this._then);

  final GithubProjectColumnItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubProjectColumnItemModel) _then;

  @override
  $Res call({
    Object? htmlUrl = freezed,
    Object? columnsUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      columnsUrl: columnsUrl == freezed
          ? _value.columnsUrl
          : columnsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubProjectColumnItemModelCopyWith<$Res>
    implements $GithubProjectColumnItemModelCopyWith<$Res> {
  factory _$GithubProjectColumnItemModelCopyWith(
          _GithubProjectColumnItemModel value,
          $Res Function(_GithubProjectColumnItemModel) then) =
      __$GithubProjectColumnItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String? htmlUrl, String? columnsUrl, String? name});
}

/// @nodoc
class __$GithubProjectColumnItemModelCopyWithImpl<$Res>
    extends _$GithubProjectColumnItemModelCopyWithImpl<$Res>
    implements _$GithubProjectColumnItemModelCopyWith<$Res> {
  __$GithubProjectColumnItemModelCopyWithImpl(
      _GithubProjectColumnItemModel _value,
      $Res Function(_GithubProjectColumnItemModel) _then)
      : super(_value, (v) => _then(v as _GithubProjectColumnItemModel));

  @override
  _GithubProjectColumnItemModel get _value =>
      super._value as _GithubProjectColumnItemModel;

  @override
  $Res call({
    Object? htmlUrl = freezed,
    Object? columnsUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_GithubProjectColumnItemModel(
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      columnsUrl: columnsUrl == freezed
          ? _value.columnsUrl
          : columnsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubProjectColumnItemModel implements _GithubProjectColumnItemModel {
  const _$_GithubProjectColumnItemModel(
      {required this.htmlUrl, required this.columnsUrl, required this.name});

  factory _$_GithubProjectColumnItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubProjectColumnItemModelFromJson(json);

  @override
  final String? htmlUrl;
  @override
  final String? columnsUrl;
  @override
  final String? name;

  @override
  String toString() {
    return 'GithubProjectColumnItemModel(htmlUrl: $htmlUrl, columnsUrl: $columnsUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubProjectColumnItemModel &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality()
                    .equals(other.htmlUrl, htmlUrl)) &&
            (identical(other.columnsUrl, columnsUrl) ||
                const DeepCollectionEquality()
                    .equals(other.columnsUrl, columnsUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(htmlUrl) ^
      const DeepCollectionEquality().hash(columnsUrl) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$GithubProjectColumnItemModelCopyWith<_GithubProjectColumnItemModel>
      get copyWith => __$GithubProjectColumnItemModelCopyWithImpl<
          _GithubProjectColumnItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubProjectColumnItemModelToJson(this);
  }
}

abstract class _GithubProjectColumnItemModel
    implements GithubProjectColumnItemModel {
  const factory _GithubProjectColumnItemModel(
      {required String? htmlUrl,
      required String? columnsUrl,
      required String? name}) = _$_GithubProjectColumnItemModel;

  factory _GithubProjectColumnItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubProjectColumnItemModel.fromJson;

  @override
  String? get htmlUrl => throw _privateConstructorUsedError;
  @override
  String? get columnsUrl => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubProjectColumnItemModelCopyWith<_GithubProjectColumnItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

GithubInstallationRepositoriesItemModel
    _$GithubInstallationRepositoriesItemModelFromJson(
        Map<String, dynamic> json) {
  return _GithubInstallationRepositoriesItemModel.fromJson(json);
}

/// @nodoc
class _$GithubInstallationRepositoriesItemModelTearOff {
  const _$GithubInstallationRepositoriesItemModelTearOff();

  _GithubInstallationRepositoriesItemModel call(
      {required List<GithubNotificationItemRepoModel>? repositoriesAdded,
      required List<GithubNotificationItemRepoModel>? repositoriesRemoved,
      required String? repositoriesSelection,
      required int? id}) {
    return _GithubInstallationRepositoriesItemModel(
      repositoriesAdded: repositoriesAdded,
      repositoriesRemoved: repositoriesRemoved,
      repositoriesSelection: repositoriesSelection,
      id: id,
    );
  }

  GithubInstallationRepositoriesItemModel fromJson(Map<String, Object> json) {
    return GithubInstallationRepositoriesItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubInstallationRepositoriesItemModel =
    _$GithubInstallationRepositoriesItemModelTearOff();

/// @nodoc
mixin _$GithubInstallationRepositoriesItemModel {
  List<GithubNotificationItemRepoModel>? get repositoriesAdded =>
      throw _privateConstructorUsedError;
  List<GithubNotificationItemRepoModel>? get repositoriesRemoved =>
      throw _privateConstructorUsedError;
  String? get repositoriesSelection => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubInstallationRepositoriesItemModelCopyWith<
          GithubInstallationRepositoriesItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubInstallationRepositoriesItemModelCopyWith<$Res> {
  factory $GithubInstallationRepositoriesItemModelCopyWith(
          GithubInstallationRepositoriesItemModel value,
          $Res Function(GithubInstallationRepositoriesItemModel) then) =
      _$GithubInstallationRepositoriesItemModelCopyWithImpl<$Res>;
  $Res call(
      {List<GithubNotificationItemRepoModel>? repositoriesAdded,
      List<GithubNotificationItemRepoModel>? repositoriesRemoved,
      String? repositoriesSelection,
      int? id});
}

/// @nodoc
class _$GithubInstallationRepositoriesItemModelCopyWithImpl<$Res>
    implements $GithubInstallationRepositoriesItemModelCopyWith<$Res> {
  _$GithubInstallationRepositoriesItemModelCopyWithImpl(
      this._value, this._then);

  final GithubInstallationRepositoriesItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubInstallationRepositoriesItemModel) _then;

  @override
  $Res call({
    Object? repositoriesAdded = freezed,
    Object? repositoriesRemoved = freezed,
    Object? repositoriesSelection = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      repositoriesAdded: repositoriesAdded == freezed
          ? _value.repositoriesAdded
          : repositoriesAdded // ignore: cast_nullable_to_non_nullable
              as List<GithubNotificationItemRepoModel>?,
      repositoriesRemoved: repositoriesRemoved == freezed
          ? _value.repositoriesRemoved
          : repositoriesRemoved // ignore: cast_nullable_to_non_nullable
              as List<GithubNotificationItemRepoModel>?,
      repositoriesSelection: repositoriesSelection == freezed
          ? _value.repositoriesSelection
          : repositoriesSelection // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GithubInstallationRepositoriesItemModelCopyWith<$Res>
    implements $GithubInstallationRepositoriesItemModelCopyWith<$Res> {
  factory _$GithubInstallationRepositoriesItemModelCopyWith(
          _GithubInstallationRepositoriesItemModel value,
          $Res Function(_GithubInstallationRepositoriesItemModel) then) =
      __$GithubInstallationRepositoriesItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GithubNotificationItemRepoModel>? repositoriesAdded,
      List<GithubNotificationItemRepoModel>? repositoriesRemoved,
      String? repositoriesSelection,
      int? id});
}

/// @nodoc
class __$GithubInstallationRepositoriesItemModelCopyWithImpl<$Res>
    extends _$GithubInstallationRepositoriesItemModelCopyWithImpl<$Res>
    implements _$GithubInstallationRepositoriesItemModelCopyWith<$Res> {
  __$GithubInstallationRepositoriesItemModelCopyWithImpl(
      _GithubInstallationRepositoriesItemModel _value,
      $Res Function(_GithubInstallationRepositoriesItemModel) _then)
      : super(_value,
            (v) => _then(v as _GithubInstallationRepositoriesItemModel));

  @override
  _GithubInstallationRepositoriesItemModel get _value =>
      super._value as _GithubInstallationRepositoriesItemModel;

  @override
  $Res call({
    Object? repositoriesAdded = freezed,
    Object? repositoriesRemoved = freezed,
    Object? repositoriesSelection = freezed,
    Object? id = freezed,
  }) {
    return _then(_GithubInstallationRepositoriesItemModel(
      repositoriesAdded: repositoriesAdded == freezed
          ? _value.repositoriesAdded
          : repositoriesAdded // ignore: cast_nullable_to_non_nullable
              as List<GithubNotificationItemRepoModel>?,
      repositoriesRemoved: repositoriesRemoved == freezed
          ? _value.repositoriesRemoved
          : repositoriesRemoved // ignore: cast_nullable_to_non_nullable
              as List<GithubNotificationItemRepoModel>?,
      repositoriesSelection: repositoriesSelection == freezed
          ? _value.repositoriesSelection
          : repositoriesSelection // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubInstallationRepositoriesItemModel
    implements _GithubInstallationRepositoriesItemModel {
  const _$_GithubInstallationRepositoriesItemModel(
      {required this.repositoriesAdded,
      required this.repositoriesRemoved,
      required this.repositoriesSelection,
      required this.id});

  factory _$_GithubInstallationRepositoriesItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GithubInstallationRepositoriesItemModelFromJson(json);

  @override
  final List<GithubNotificationItemRepoModel>? repositoriesAdded;
  @override
  final List<GithubNotificationItemRepoModel>? repositoriesRemoved;
  @override
  final String? repositoriesSelection;
  @override
  final int? id;

  @override
  String toString() {
    return 'GithubInstallationRepositoriesItemModel(repositoriesAdded: $repositoriesAdded, repositoriesRemoved: $repositoriesRemoved, repositoriesSelection: $repositoriesSelection, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubInstallationRepositoriesItemModel &&
            (identical(other.repositoriesAdded, repositoriesAdded) ||
                const DeepCollectionEquality()
                    .equals(other.repositoriesAdded, repositoriesAdded)) &&
            (identical(other.repositoriesRemoved, repositoriesRemoved) ||
                const DeepCollectionEquality()
                    .equals(other.repositoriesRemoved, repositoriesRemoved)) &&
            (identical(other.repositoriesSelection, repositoriesSelection) ||
                const DeepCollectionEquality().equals(
                    other.repositoriesSelection, repositoriesSelection)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(repositoriesAdded) ^
      const DeepCollectionEquality().hash(repositoriesRemoved) ^
      const DeepCollectionEquality().hash(repositoriesSelection) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GithubInstallationRepositoriesItemModelCopyWith<
          _GithubInstallationRepositoriesItemModel>
      get copyWith => __$GithubInstallationRepositoriesItemModelCopyWithImpl<
          _GithubInstallationRepositoriesItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubInstallationRepositoriesItemModelToJson(this);
  }
}

abstract class _GithubInstallationRepositoriesItemModel
    implements GithubInstallationRepositoriesItemModel {
  const factory _GithubInstallationRepositoriesItemModel(
      {required List<GithubNotificationItemRepoModel>? repositoriesAdded,
      required List<GithubNotificationItemRepoModel>? repositoriesRemoved,
      required String? repositoriesSelection,
      required int? id}) = _$_GithubInstallationRepositoriesItemModel;

  factory _GithubInstallationRepositoriesItemModel.fromJson(
          Map<String, dynamic> json) =
      _$_GithubInstallationRepositoriesItemModel.fromJson;

  @override
  List<GithubNotificationItemRepoModel>? get repositoriesAdded =>
      throw _privateConstructorUsedError;
  @override
  List<GithubNotificationItemRepoModel>? get repositoriesRemoved =>
      throw _privateConstructorUsedError;
  @override
  String? get repositoriesSelection => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubInstallationRepositoriesItemModelCopyWith<
          _GithubInstallationRepositoriesItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

GithubCheckrunItemModel _$GithubCheckrunItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubCheckrunItemModel.fromJson(json);
}

/// @nodoc
class _$GithubCheckrunItemModelTearOff {
  const _$GithubCheckrunItemModelTearOff();

  _GithubCheckrunItemModel call(
      {required String? status, required String? name, required int? id}) {
    return _GithubCheckrunItemModel(
      status: status,
      name: name,
      id: id,
    );
  }

  GithubCheckrunItemModel fromJson(Map<String, Object> json) {
    return GithubCheckrunItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubCheckrunItemModel = _$GithubCheckrunItemModelTearOff();

/// @nodoc
mixin _$GithubCheckrunItemModel {
  String? get status => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubCheckrunItemModelCopyWith<GithubCheckrunItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubCheckrunItemModelCopyWith<$Res> {
  factory $GithubCheckrunItemModelCopyWith(GithubCheckrunItemModel value,
          $Res Function(GithubCheckrunItemModel) then) =
      _$GithubCheckrunItemModelCopyWithImpl<$Res>;
  $Res call({String? status, String? name, int? id});
}

/// @nodoc
class _$GithubCheckrunItemModelCopyWithImpl<$Res>
    implements $GithubCheckrunItemModelCopyWith<$Res> {
  _$GithubCheckrunItemModelCopyWithImpl(this._value, this._then);

  final GithubCheckrunItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubCheckrunItemModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GithubCheckrunItemModelCopyWith<$Res>
    implements $GithubCheckrunItemModelCopyWith<$Res> {
  factory _$GithubCheckrunItemModelCopyWith(_GithubCheckrunItemModel value,
          $Res Function(_GithubCheckrunItemModel) then) =
      __$GithubCheckrunItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? name, int? id});
}

/// @nodoc
class __$GithubCheckrunItemModelCopyWithImpl<$Res>
    extends _$GithubCheckrunItemModelCopyWithImpl<$Res>
    implements _$GithubCheckrunItemModelCopyWith<$Res> {
  __$GithubCheckrunItemModelCopyWithImpl(_GithubCheckrunItemModel _value,
      $Res Function(_GithubCheckrunItemModel) _then)
      : super(_value, (v) => _then(v as _GithubCheckrunItemModel));

  @override
  _GithubCheckrunItemModel get _value =>
      super._value as _GithubCheckrunItemModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_GithubCheckrunItemModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubCheckrunItemModel implements _GithubCheckrunItemModel {
  const _$_GithubCheckrunItemModel(
      {required this.status, required this.name, required this.id});

  factory _$_GithubCheckrunItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubCheckrunItemModelFromJson(json);

  @override
  final String? status;
  @override
  final String? name;
  @override
  final int? id;

  @override
  String toString() {
    return 'GithubCheckrunItemModel(status: $status, name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubCheckrunItemModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GithubCheckrunItemModelCopyWith<_GithubCheckrunItemModel> get copyWith =>
      __$GithubCheckrunItemModelCopyWithImpl<_GithubCheckrunItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubCheckrunItemModelToJson(this);
  }
}

abstract class _GithubCheckrunItemModel implements GithubCheckrunItemModel {
  const factory _GithubCheckrunItemModel(
      {required String? status,
      required String? name,
      required int? id}) = _$_GithubCheckrunItemModel;

  factory _GithubCheckrunItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubCheckrunItemModel.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubCheckrunItemModelCopyWith<_GithubCheckrunItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubCheckSuiteItemModel _$GithubCheckSuiteItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubCheckSuiteItemModel.fromJson(json);
}

/// @nodoc
class _$GithubCheckSuiteItemModelTearOff {
  const _$GithubCheckSuiteItemModelTearOff();

  _GithubCheckSuiteItemModel call(
      {required String? status, required String? conclusion}) {
    return _GithubCheckSuiteItemModel(
      status: status,
      conclusion: conclusion,
    );
  }

  GithubCheckSuiteItemModel fromJson(Map<String, Object> json) {
    return GithubCheckSuiteItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubCheckSuiteItemModel = _$GithubCheckSuiteItemModelTearOff();

/// @nodoc
mixin _$GithubCheckSuiteItemModel {
  String? get status => throw _privateConstructorUsedError;
  String? get conclusion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubCheckSuiteItemModelCopyWith<GithubCheckSuiteItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubCheckSuiteItemModelCopyWith<$Res> {
  factory $GithubCheckSuiteItemModelCopyWith(GithubCheckSuiteItemModel value,
          $Res Function(GithubCheckSuiteItemModel) then) =
      _$GithubCheckSuiteItemModelCopyWithImpl<$Res>;
  $Res call({String? status, String? conclusion});
}

/// @nodoc
class _$GithubCheckSuiteItemModelCopyWithImpl<$Res>
    implements $GithubCheckSuiteItemModelCopyWith<$Res> {
  _$GithubCheckSuiteItemModelCopyWithImpl(this._value, this._then);

  final GithubCheckSuiteItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubCheckSuiteItemModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? conclusion = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      conclusion: conclusion == freezed
          ? _value.conclusion
          : conclusion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubCheckSuiteItemModelCopyWith<$Res>
    implements $GithubCheckSuiteItemModelCopyWith<$Res> {
  factory _$GithubCheckSuiteItemModelCopyWith(_GithubCheckSuiteItemModel value,
          $Res Function(_GithubCheckSuiteItemModel) then) =
      __$GithubCheckSuiteItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? conclusion});
}

/// @nodoc
class __$GithubCheckSuiteItemModelCopyWithImpl<$Res>
    extends _$GithubCheckSuiteItemModelCopyWithImpl<$Res>
    implements _$GithubCheckSuiteItemModelCopyWith<$Res> {
  __$GithubCheckSuiteItemModelCopyWithImpl(_GithubCheckSuiteItemModel _value,
      $Res Function(_GithubCheckSuiteItemModel) _then)
      : super(_value, (v) => _then(v as _GithubCheckSuiteItemModel));

  @override
  _GithubCheckSuiteItemModel get _value =>
      super._value as _GithubCheckSuiteItemModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? conclusion = freezed,
  }) {
    return _then(_GithubCheckSuiteItemModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      conclusion: conclusion == freezed
          ? _value.conclusion
          : conclusion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubCheckSuiteItemModel implements _GithubCheckSuiteItemModel {
  const _$_GithubCheckSuiteItemModel(
      {required this.status, required this.conclusion});

  factory _$_GithubCheckSuiteItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubCheckSuiteItemModelFromJson(json);

  @override
  final String? status;
  @override
  final String? conclusion;

  @override
  String toString() {
    return 'GithubCheckSuiteItemModel(status: $status, conclusion: $conclusion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubCheckSuiteItemModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.conclusion, conclusion) ||
                const DeepCollectionEquality()
                    .equals(other.conclusion, conclusion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(conclusion);

  @JsonKey(ignore: true)
  @override
  _$GithubCheckSuiteItemModelCopyWith<_GithubCheckSuiteItemModel>
      get copyWith =>
          __$GithubCheckSuiteItemModelCopyWithImpl<_GithubCheckSuiteItemModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubCheckSuiteItemModelToJson(this);
  }
}

abstract class _GithubCheckSuiteItemModel implements GithubCheckSuiteItemModel {
  const factory _GithubCheckSuiteItemModel(
      {required String? status,
      required String? conclusion}) = _$_GithubCheckSuiteItemModel;

  factory _GithubCheckSuiteItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubCheckSuiteItemModel.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get conclusion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubCheckSuiteItemModelCopyWith<_GithubCheckSuiteItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

GithubContentReferenceItemModel _$GithubContentReferenceItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubContentReferenceItemModel.fromJson(json);
}

/// @nodoc
class _$GithubContentReferenceItemModelTearOff {
  const _$GithubContentReferenceItemModelTearOff();

  _GithubContentReferenceItemModel call(
      {required int? id, required String? reference}) {
    return _GithubContentReferenceItemModel(
      id: id,
      reference: reference,
    );
  }

  GithubContentReferenceItemModel fromJson(Map<String, Object> json) {
    return GithubContentReferenceItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubContentReferenceItemModel =
    _$GithubContentReferenceItemModelTearOff();

/// @nodoc
mixin _$GithubContentReferenceItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubContentReferenceItemModelCopyWith<GithubContentReferenceItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubContentReferenceItemModelCopyWith<$Res> {
  factory $GithubContentReferenceItemModelCopyWith(
          GithubContentReferenceItemModel value,
          $Res Function(GithubContentReferenceItemModel) then) =
      _$GithubContentReferenceItemModelCopyWithImpl<$Res>;
  $Res call({int? id, String? reference});
}

/// @nodoc
class _$GithubContentReferenceItemModelCopyWithImpl<$Res>
    implements $GithubContentReferenceItemModelCopyWith<$Res> {
  _$GithubContentReferenceItemModelCopyWithImpl(this._value, this._then);

  final GithubContentReferenceItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubContentReferenceItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubContentReferenceItemModelCopyWith<$Res>
    implements $GithubContentReferenceItemModelCopyWith<$Res> {
  factory _$GithubContentReferenceItemModelCopyWith(
          _GithubContentReferenceItemModel value,
          $Res Function(_GithubContentReferenceItemModel) then) =
      __$GithubContentReferenceItemModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? reference});
}

/// @nodoc
class __$GithubContentReferenceItemModelCopyWithImpl<$Res>
    extends _$GithubContentReferenceItemModelCopyWithImpl<$Res>
    implements _$GithubContentReferenceItemModelCopyWith<$Res> {
  __$GithubContentReferenceItemModelCopyWithImpl(
      _GithubContentReferenceItemModel _value,
      $Res Function(_GithubContentReferenceItemModel) _then)
      : super(_value, (v) => _then(v as _GithubContentReferenceItemModel));

  @override
  _GithubContentReferenceItemModel get _value =>
      super._value as _GithubContentReferenceItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? reference = freezed,
  }) {
    return _then(_GithubContentReferenceItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubContentReferenceItemModel
    implements _GithubContentReferenceItemModel {
  const _$_GithubContentReferenceItemModel(
      {required this.id, required this.reference});

  factory _$_GithubContentReferenceItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GithubContentReferenceItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? reference;

  @override
  String toString() {
    return 'GithubContentReferenceItemModel(id: $id, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubContentReferenceItemModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(reference);

  @JsonKey(ignore: true)
  @override
  _$GithubContentReferenceItemModelCopyWith<_GithubContentReferenceItemModel>
      get copyWith => __$GithubContentReferenceItemModelCopyWithImpl<
          _GithubContentReferenceItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubContentReferenceItemModelToJson(this);
  }
}

abstract class _GithubContentReferenceItemModel
    implements GithubContentReferenceItemModel {
  const factory _GithubContentReferenceItemModel(
      {required int? id,
      required String? reference}) = _$_GithubContentReferenceItemModel;

  factory _GithubContentReferenceItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubContentReferenceItemModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get reference => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubContentReferenceItemModelCopyWith<_GithubContentReferenceItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

GithubContributorItemModel _$GithubContributorItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubContributorItemModel.fromJson(json);
}

/// @nodoc
class _$GithubContributorItemModelTearOff {
  const _$GithubContributorItemModelTearOff();

  _GithubContributorItemModel call(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? htmlUrl,
      required int? contributions}) {
    return _GithubContributorItemModel(
      id: id,
      login: login,
      avatarUrl: avatarUrl,
      htmlUrl: htmlUrl,
      contributions: contributions,
    );
  }

  GithubContributorItemModel fromJson(Map<String, Object> json) {
    return GithubContributorItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubContributorItemModel = _$GithubContributorItemModelTearOff();

/// @nodoc
mixin _$GithubContributorItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;
  int? get contributions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubContributorItemModelCopyWith<GithubContributorItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubContributorItemModelCopyWith<$Res> {
  factory $GithubContributorItemModelCopyWith(GithubContributorItemModel value,
          $Res Function(GithubContributorItemModel) then) =
      _$GithubContributorItemModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? login,
      String? avatarUrl,
      String? htmlUrl,
      int? contributions});
}

/// @nodoc
class _$GithubContributorItemModelCopyWithImpl<$Res>
    implements $GithubContributorItemModelCopyWith<$Res> {
  _$GithubContributorItemModelCopyWithImpl(this._value, this._then);

  final GithubContributorItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubContributorItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? htmlUrl = freezed,
    Object? contributions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contributions: contributions == freezed
          ? _value.contributions
          : contributions // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GithubContributorItemModelCopyWith<$Res>
    implements $GithubContributorItemModelCopyWith<$Res> {
  factory _$GithubContributorItemModelCopyWith(
          _GithubContributorItemModel value,
          $Res Function(_GithubContributorItemModel) then) =
      __$GithubContributorItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? login,
      String? avatarUrl,
      String? htmlUrl,
      int? contributions});
}

/// @nodoc
class __$GithubContributorItemModelCopyWithImpl<$Res>
    extends _$GithubContributorItemModelCopyWithImpl<$Res>
    implements _$GithubContributorItemModelCopyWith<$Res> {
  __$GithubContributorItemModelCopyWithImpl(_GithubContributorItemModel _value,
      $Res Function(_GithubContributorItemModel) _then)
      : super(_value, (v) => _then(v as _GithubContributorItemModel));

  @override
  _GithubContributorItemModel get _value =>
      super._value as _GithubContributorItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? htmlUrl = freezed,
    Object? contributions = freezed,
  }) {
    return _then(_GithubContributorItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contributions: contributions == freezed
          ? _value.contributions
          : contributions // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubContributorItemModel implements _GithubContributorItemModel {
  const _$_GithubContributorItemModel(
      {required this.id,
      required this.login,
      required this.avatarUrl,
      required this.htmlUrl,
      required this.contributions});

  factory _$_GithubContributorItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubContributorItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? login;
  @override
  final String? avatarUrl;
  @override
  final String? htmlUrl;
  @override
  final int? contributions;

  @override
  String toString() {
    return 'GithubContributorItemModel(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, contributions: $contributions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubContributorItemModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality()
                    .equals(other.htmlUrl, htmlUrl)) &&
            (identical(other.contributions, contributions) ||
                const DeepCollectionEquality()
                    .equals(other.contributions, contributions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(htmlUrl) ^
      const DeepCollectionEquality().hash(contributions);

  @JsonKey(ignore: true)
  @override
  _$GithubContributorItemModelCopyWith<_GithubContributorItemModel>
      get copyWith => __$GithubContributorItemModelCopyWithImpl<
          _GithubContributorItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubContributorItemModelToJson(this);
  }
}

abstract class _GithubContributorItemModel
    implements GithubContributorItemModel {
  const factory _GithubContributorItemModel(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? htmlUrl,
      required int? contributions}) = _$_GithubContributorItemModel;

  factory _GithubContributorItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubContributorItemModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get login => throw _privateConstructorUsedError;
  @override
  String? get avatarUrl => throw _privateConstructorUsedError;
  @override
  String? get htmlUrl => throw _privateConstructorUsedError;
  @override
  int? get contributions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubContributorItemModelCopyWith<_GithubContributorItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

GithubUserOrganizationItemModel _$GithubUserOrganizationItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubUserOrganizationItemModel.fromJson(json);
}

/// @nodoc
class _$GithubUserOrganizationItemModelTearOff {
  const _$GithubUserOrganizationItemModelTearOff();

  _GithubUserOrganizationItemModel call(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? description,
      required String? url}) {
    return _GithubUserOrganizationItemModel(
      id: id,
      login: login,
      avatarUrl: avatarUrl,
      description: description,
      url: url,
    );
  }

  GithubUserOrganizationItemModel fromJson(Map<String, Object> json) {
    return GithubUserOrganizationItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubUserOrganizationItemModel =
    _$GithubUserOrganizationItemModelTearOff();

/// @nodoc
mixin _$GithubUserOrganizationItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubUserOrganizationItemModelCopyWith<GithubUserOrganizationItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubUserOrganizationItemModelCopyWith<$Res> {
  factory $GithubUserOrganizationItemModelCopyWith(
          GithubUserOrganizationItemModel value,
          $Res Function(GithubUserOrganizationItemModel) then) =
      _$GithubUserOrganizationItemModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? login,
      String? avatarUrl,
      String? description,
      String? url});
}

/// @nodoc
class _$GithubUserOrganizationItemModelCopyWithImpl<$Res>
    implements $GithubUserOrganizationItemModelCopyWith<$Res> {
  _$GithubUserOrganizationItemModelCopyWithImpl(this._value, this._then);

  final GithubUserOrganizationItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubUserOrganizationItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubUserOrganizationItemModelCopyWith<$Res>
    implements $GithubUserOrganizationItemModelCopyWith<$Res> {
  factory _$GithubUserOrganizationItemModelCopyWith(
          _GithubUserOrganizationItemModel value,
          $Res Function(_GithubUserOrganizationItemModel) then) =
      __$GithubUserOrganizationItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? login,
      String? avatarUrl,
      String? description,
      String? url});
}

/// @nodoc
class __$GithubUserOrganizationItemModelCopyWithImpl<$Res>
    extends _$GithubUserOrganizationItemModelCopyWithImpl<$Res>
    implements _$GithubUserOrganizationItemModelCopyWith<$Res> {
  __$GithubUserOrganizationItemModelCopyWithImpl(
      _GithubUserOrganizationItemModel _value,
      $Res Function(_GithubUserOrganizationItemModel) _then)
      : super(_value, (v) => _then(v as _GithubUserOrganizationItemModel));

  @override
  _GithubUserOrganizationItemModel get _value =>
      super._value as _GithubUserOrganizationItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(_GithubUserOrganizationItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubUserOrganizationItemModel
    implements _GithubUserOrganizationItemModel {
  const _$_GithubUserOrganizationItemModel(
      {required this.id,
      required this.login,
      required this.avatarUrl,
      required this.description,
      required this.url});

  factory _$_GithubUserOrganizationItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GithubUserOrganizationItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? login;
  @override
  final String? avatarUrl;
  @override
  final String? description;
  @override
  final String? url;

  @override
  String toString() {
    return 'GithubUserOrganizationItemModel(id: $id, login: $login, avatarUrl: $avatarUrl, description: $description, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubUserOrganizationItemModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$GithubUserOrganizationItemModelCopyWith<_GithubUserOrganizationItemModel>
      get copyWith => __$GithubUserOrganizationItemModelCopyWithImpl<
          _GithubUserOrganizationItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubUserOrganizationItemModelToJson(this);
  }
}

abstract class _GithubUserOrganizationItemModel
    implements GithubUserOrganizationItemModel {
  const factory _GithubUserOrganizationItemModel(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? description,
      required String? url}) = _$_GithubUserOrganizationItemModel;

  factory _GithubUserOrganizationItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubUserOrganizationItemModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get login => throw _privateConstructorUsedError;
  @override
  String? get avatarUrl => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubUserOrganizationItemModelCopyWith<_GithubUserOrganizationItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

GistFilesModel _$GistFilesModelFromJson(Map<String, dynamic> json) {
  return _GistFilesModel.fromJson(json);
}

/// @nodoc
class _$GistFilesModelTearOff {
  const _$GistFilesModelTearOff();

  _GistFilesModel call(
      {required String? filename,
      required int? size,
      required String? rawUrl,
      required String? type,
      required String? language,
      required bool? truncated,
      required String? content}) {
    return _GistFilesModel(
      filename: filename,
      size: size,
      rawUrl: rawUrl,
      type: type,
      language: language,
      truncated: truncated,
      content: content,
    );
  }

  GistFilesModel fromJson(Map<String, Object> json) {
    return GistFilesModel.fromJson(json);
  }
}

/// @nodoc
const $GistFilesModel = _$GistFilesModelTearOff();

/// @nodoc
mixin _$GistFilesModel {
  String? get filename => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get rawUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  bool? get truncated => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GistFilesModelCopyWith<GistFilesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GistFilesModelCopyWith<$Res> {
  factory $GistFilesModelCopyWith(
          GistFilesModel value, $Res Function(GistFilesModel) then) =
      _$GistFilesModelCopyWithImpl<$Res>;
  $Res call(
      {String? filename,
      int? size,
      String? rawUrl,
      String? type,
      String? language,
      bool? truncated,
      String? content});
}

/// @nodoc
class _$GistFilesModelCopyWithImpl<$Res>
    implements $GistFilesModelCopyWith<$Res> {
  _$GistFilesModelCopyWithImpl(this._value, this._then);

  final GistFilesModel _value;
  // ignore: unused_field
  final $Res Function(GistFilesModel) _then;

  @override
  $Res call({
    Object? filename = freezed,
    Object? size = freezed,
    Object? rawUrl = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? truncated = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      rawUrl: rawUrl == freezed
          ? _value.rawUrl
          : rawUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      truncated: truncated == freezed
          ? _value.truncated
          : truncated // ignore: cast_nullable_to_non_nullable
              as bool?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GistFilesModelCopyWith<$Res>
    implements $GistFilesModelCopyWith<$Res> {
  factory _$GistFilesModelCopyWith(
          _GistFilesModel value, $Res Function(_GistFilesModel) then) =
      __$GistFilesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? filename,
      int? size,
      String? rawUrl,
      String? type,
      String? language,
      bool? truncated,
      String? content});
}

/// @nodoc
class __$GistFilesModelCopyWithImpl<$Res>
    extends _$GistFilesModelCopyWithImpl<$Res>
    implements _$GistFilesModelCopyWith<$Res> {
  __$GistFilesModelCopyWithImpl(
      _GistFilesModel _value, $Res Function(_GistFilesModel) _then)
      : super(_value, (v) => _then(v as _GistFilesModel));

  @override
  _GistFilesModel get _value => super._value as _GistFilesModel;

  @override
  $Res call({
    Object? filename = freezed,
    Object? size = freezed,
    Object? rawUrl = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? truncated = freezed,
    Object? content = freezed,
  }) {
    return _then(_GistFilesModel(
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      rawUrl: rawUrl == freezed
          ? _value.rawUrl
          : rawUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      truncated: truncated == freezed
          ? _value.truncated
          : truncated // ignore: cast_nullable_to_non_nullable
              as bool?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GistFilesModel implements _GistFilesModel {
  const _$_GistFilesModel(
      {required this.filename,
      required this.size,
      required this.rawUrl,
      required this.type,
      required this.language,
      required this.truncated,
      required this.content});

  factory _$_GistFilesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GistFilesModelFromJson(json);

  @override
  final String? filename;
  @override
  final int? size;
  @override
  final String? rawUrl;
  @override
  final String? type;
  @override
  final String? language;
  @override
  final bool? truncated;
  @override
  final String? content;

  @override
  String toString() {
    return 'GistFilesModel(filename: $filename, size: $size, rawUrl: $rawUrl, type: $type, language: $language, truncated: $truncated, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GistFilesModel &&
            (identical(other.filename, filename) ||
                const DeepCollectionEquality()
                    .equals(other.filename, filename)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.rawUrl, rawUrl) ||
                const DeepCollectionEquality().equals(other.rawUrl, rawUrl)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.truncated, truncated) ||
                const DeepCollectionEquality()
                    .equals(other.truncated, truncated)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filename) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(rawUrl) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(truncated) ^
      const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$GistFilesModelCopyWith<_GistFilesModel> get copyWith =>
      __$GistFilesModelCopyWithImpl<_GistFilesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GistFilesModelToJson(this);
  }
}

abstract class _GistFilesModel implements GistFilesModel {
  const factory _GistFilesModel(
      {required String? filename,
      required int? size,
      required String? rawUrl,
      required String? type,
      required String? language,
      required bool? truncated,
      required String? content}) = _$_GistFilesModel;

  factory _GistFilesModel.fromJson(Map<String, dynamic> json) =
      _$_GistFilesModel.fromJson;

  @override
  String? get filename => throw _privateConstructorUsedError;
  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  String? get rawUrl => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get language => throw _privateConstructorUsedError;
  @override
  bool? get truncated => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GistFilesModelCopyWith<_GistFilesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubGistsItemModel _$GithubGistsItemModelFromJson(Map<String, dynamic> json) {
  return _GithubGistsItemModel.fromJson(json);
}

/// @nodoc
class _$GithubGistsItemModelTearOff {
  const _$GithubGistsItemModelTearOff();

  _GithubGistsItemModel call(
      {required String? id,
      required String? description,
      required bool? public,
      required Map<String, GistFilesModel>? files,
      required GithubEventUserModel? owner,
      required DateTime? createdAt,
      required DateTime? updatedAt}) {
    return _GithubGistsItemModel(
      id: id,
      description: description,
      public: public,
      files: files,
      owner: owner,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  GithubGistsItemModel fromJson(Map<String, Object> json) {
    return GithubGistsItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubGistsItemModel = _$GithubGistsItemModelTearOff();

/// @nodoc
mixin _$GithubGistsItemModel {
  String? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get public => throw _privateConstructorUsedError;
  Map<String, GistFilesModel>? get files => throw _privateConstructorUsedError;
  GithubEventUserModel? get owner => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubGistsItemModelCopyWith<GithubGistsItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubGistsItemModelCopyWith<$Res> {
  factory $GithubGistsItemModelCopyWith(GithubGistsItemModel value,
          $Res Function(GithubGistsItemModel) then) =
      _$GithubGistsItemModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? description,
      bool? public,
      Map<String, GistFilesModel>? files,
      GithubEventUserModel? owner,
      DateTime? createdAt,
      DateTime? updatedAt});

  $GithubEventUserModelCopyWith<$Res>? get owner;
}

/// @nodoc
class _$GithubGistsItemModelCopyWithImpl<$Res>
    implements $GithubGistsItemModelCopyWith<$Res> {
  _$GithubGistsItemModelCopyWithImpl(this._value, this._then);

  final GithubGistsItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubGistsItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? public = freezed,
    Object? files = freezed,
    Object? owner = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, GistFilesModel>?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GithubEventUserModel?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $GithubEventUserModelCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $GithubEventUserModelCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$GithubGistsItemModelCopyWith<$Res>
    implements $GithubGistsItemModelCopyWith<$Res> {
  factory _$GithubGistsItemModelCopyWith(_GithubGistsItemModel value,
          $Res Function(_GithubGistsItemModel) then) =
      __$GithubGistsItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? description,
      bool? public,
      Map<String, GistFilesModel>? files,
      GithubEventUserModel? owner,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $GithubEventUserModelCopyWith<$Res>? get owner;
}

/// @nodoc
class __$GithubGistsItemModelCopyWithImpl<$Res>
    extends _$GithubGistsItemModelCopyWithImpl<$Res>
    implements _$GithubGistsItemModelCopyWith<$Res> {
  __$GithubGistsItemModelCopyWithImpl(
      _GithubGistsItemModel _value, $Res Function(_GithubGistsItemModel) _then)
      : super(_value, (v) => _then(v as _GithubGistsItemModel));

  @override
  _GithubGistsItemModel get _value => super._value as _GithubGistsItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? public = freezed,
    Object? files = freezed,
    Object? owner = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_GithubGistsItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, GistFilesModel>?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GithubEventUserModel?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubGistsItemModel implements _GithubGistsItemModel {
  const _$_GithubGistsItemModel(
      {required this.id,
      required this.description,
      required this.public,
      required this.files,
      required this.owner,
      required this.createdAt,
      required this.updatedAt});

  factory _$_GithubGistsItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubGistsItemModelFromJson(json);

  @override
  final String? id;
  @override
  final String? description;
  @override
  final bool? public;
  @override
  final Map<String, GistFilesModel>? files;
  @override
  final GithubEventUserModel? owner;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'GithubGistsItemModel(id: $id, description: $description, public: $public, files: $files, owner: $owner, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubGistsItemModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.public, public) ||
                const DeepCollectionEquality().equals(other.public, public)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(public) ^
      const DeepCollectionEquality().hash(files) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$GithubGistsItemModelCopyWith<_GithubGistsItemModel> get copyWith =>
      __$GithubGistsItemModelCopyWithImpl<_GithubGistsItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubGistsItemModelToJson(this);
  }
}

abstract class _GithubGistsItemModel implements GithubGistsItemModel {
  const factory _GithubGistsItemModel(
      {required String? id,
      required String? description,
      required bool? public,
      required Map<String, GistFilesModel>? files,
      required GithubEventUserModel? owner,
      required DateTime? createdAt,
      required DateTime? updatedAt}) = _$_GithubGistsItemModel;

  factory _GithubGistsItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubGistsItemModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  bool? get public => throw _privateConstructorUsedError;
  @override
  Map<String, GistFilesModel>? get files => throw _privateConstructorUsedError;
  @override
  GithubEventUserModel? get owner => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubGistsItemModelCopyWith<_GithubGistsItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubFilesItemModel _$GithubFilesItemModelFromJson(Map<String, dynamic> json) {
  return _GithubFilesItemModel.fromJson(json);
}

/// @nodoc
class _$GithubFilesItemModelTearOff {
  const _$GithubFilesItemModelTearOff();

  _GithubFilesItemModel call(
      {required String? filename,
      required String? status,
      required int? additions,
      required int? deletions,
      required int? changes,
      required String? patch}) {
    return _GithubFilesItemModel(
      filename: filename,
      status: status,
      additions: additions,
      deletions: deletions,
      changes: changes,
      patch: patch,
    );
  }

  GithubFilesItemModel fromJson(Map<String, Object> json) {
    return GithubFilesItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubFilesItemModel = _$GithubFilesItemModelTearOff();

/// @nodoc
mixin _$GithubFilesItemModel {
  String? get filename => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get additions => throw _privateConstructorUsedError;
  int? get deletions => throw _privateConstructorUsedError;
  int? get changes => throw _privateConstructorUsedError;
  String? get patch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubFilesItemModelCopyWith<GithubFilesItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubFilesItemModelCopyWith<$Res> {
  factory $GithubFilesItemModelCopyWith(GithubFilesItemModel value,
          $Res Function(GithubFilesItemModel) then) =
      _$GithubFilesItemModelCopyWithImpl<$Res>;
  $Res call(
      {String? filename,
      String? status,
      int? additions,
      int? deletions,
      int? changes,
      String? patch});
}

/// @nodoc
class _$GithubFilesItemModelCopyWithImpl<$Res>
    implements $GithubFilesItemModelCopyWith<$Res> {
  _$GithubFilesItemModelCopyWithImpl(this._value, this._then);

  final GithubFilesItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubFilesItemModel) _then;

  @override
  $Res call({
    Object? filename = freezed,
    Object? status = freezed,
    Object? additions = freezed,
    Object? deletions = freezed,
    Object? changes = freezed,
    Object? patch = freezed,
  }) {
    return _then(_value.copyWith(
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      additions: additions == freezed
          ? _value.additions
          : additions // ignore: cast_nullable_to_non_nullable
              as int?,
      deletions: deletions == freezed
          ? _value.deletions
          : deletions // ignore: cast_nullable_to_non_nullable
              as int?,
      changes: changes == freezed
          ? _value.changes
          : changes // ignore: cast_nullable_to_non_nullable
              as int?,
      patch: patch == freezed
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubFilesItemModelCopyWith<$Res>
    implements $GithubFilesItemModelCopyWith<$Res> {
  factory _$GithubFilesItemModelCopyWith(_GithubFilesItemModel value,
          $Res Function(_GithubFilesItemModel) then) =
      __$GithubFilesItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? filename,
      String? status,
      int? additions,
      int? deletions,
      int? changes,
      String? patch});
}

/// @nodoc
class __$GithubFilesItemModelCopyWithImpl<$Res>
    extends _$GithubFilesItemModelCopyWithImpl<$Res>
    implements _$GithubFilesItemModelCopyWith<$Res> {
  __$GithubFilesItemModelCopyWithImpl(
      _GithubFilesItemModel _value, $Res Function(_GithubFilesItemModel) _then)
      : super(_value, (v) => _then(v as _GithubFilesItemModel));

  @override
  _GithubFilesItemModel get _value => super._value as _GithubFilesItemModel;

  @override
  $Res call({
    Object? filename = freezed,
    Object? status = freezed,
    Object? additions = freezed,
    Object? deletions = freezed,
    Object? changes = freezed,
    Object? patch = freezed,
  }) {
    return _then(_GithubFilesItemModel(
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      additions: additions == freezed
          ? _value.additions
          : additions // ignore: cast_nullable_to_non_nullable
              as int?,
      deletions: deletions == freezed
          ? _value.deletions
          : deletions // ignore: cast_nullable_to_non_nullable
              as int?,
      changes: changes == freezed
          ? _value.changes
          : changes // ignore: cast_nullable_to_non_nullable
              as int?,
      patch: patch == freezed
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubFilesItemModel implements _GithubFilesItemModel {
  const _$_GithubFilesItemModel(
      {required this.filename,
      required this.status,
      required this.additions,
      required this.deletions,
      required this.changes,
      required this.patch});

  factory _$_GithubFilesItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubFilesItemModelFromJson(json);

  @override
  final String? filename;
  @override
  final String? status;
  @override
  final int? additions;
  @override
  final int? deletions;
  @override
  final int? changes;
  @override
  final String? patch;

  @override
  String toString() {
    return 'GithubFilesItemModel(filename: $filename, status: $status, additions: $additions, deletions: $deletions, changes: $changes, patch: $patch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubFilesItemModel &&
            (identical(other.filename, filename) ||
                const DeepCollectionEquality()
                    .equals(other.filename, filename)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.additions, additions) ||
                const DeepCollectionEquality()
                    .equals(other.additions, additions)) &&
            (identical(other.deletions, deletions) ||
                const DeepCollectionEquality()
                    .equals(other.deletions, deletions)) &&
            (identical(other.changes, changes) ||
                const DeepCollectionEquality()
                    .equals(other.changes, changes)) &&
            (identical(other.patch, patch) ||
                const DeepCollectionEquality().equals(other.patch, patch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filename) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(additions) ^
      const DeepCollectionEquality().hash(deletions) ^
      const DeepCollectionEquality().hash(changes) ^
      const DeepCollectionEquality().hash(patch);

  @JsonKey(ignore: true)
  @override
  _$GithubFilesItemModelCopyWith<_GithubFilesItemModel> get copyWith =>
      __$GithubFilesItemModelCopyWithImpl<_GithubFilesItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubFilesItemModelToJson(this);
  }
}

abstract class _GithubFilesItemModel implements GithubFilesItemModel {
  const factory _GithubFilesItemModel(
      {required String? filename,
      required String? status,
      required int? additions,
      required int? deletions,
      required int? changes,
      required String? patch}) = _$_GithubFilesItemModel;

  factory _GithubFilesItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubFilesItemModel.fromJson;

  @override
  String? get filename => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  int? get additions => throw _privateConstructorUsedError;
  @override
  int? get deletions => throw _privateConstructorUsedError;
  @override
  int? get changes => throw _privateConstructorUsedError;
  @override
  String? get patch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubFilesItemModelCopyWith<_GithubFilesItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubComparisonItemModel _$GithubComparisonItemModelFromJson(
    Map<String, dynamic> json) {
  return _GithubComparisonItemModel.fromJson(json);
}

/// @nodoc
class _$GithubComparisonItemModelTearOff {
  const _$GithubComparisonItemModelTearOff();

  _GithubComparisonItemModel call(
      {required List<GithubFilesItemModel>? files,
      required String? status,
      required int? aheadBy,
      required int? behindBy}) {
    return _GithubComparisonItemModel(
      files: files,
      status: status,
      aheadBy: aheadBy,
      behindBy: behindBy,
    );
  }

  GithubComparisonItemModel fromJson(Map<String, Object> json) {
    return GithubComparisonItemModel.fromJson(json);
  }
}

/// @nodoc
const $GithubComparisonItemModel = _$GithubComparisonItemModelTearOff();

/// @nodoc
mixin _$GithubComparisonItemModel {
  List<GithubFilesItemModel>? get files => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get aheadBy => throw _privateConstructorUsedError;
  int? get behindBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubComparisonItemModelCopyWith<GithubComparisonItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubComparisonItemModelCopyWith<$Res> {
  factory $GithubComparisonItemModelCopyWith(GithubComparisonItemModel value,
          $Res Function(GithubComparisonItemModel) then) =
      _$GithubComparisonItemModelCopyWithImpl<$Res>;
  $Res call(
      {List<GithubFilesItemModel>? files,
      String? status,
      int? aheadBy,
      int? behindBy});
}

/// @nodoc
class _$GithubComparisonItemModelCopyWithImpl<$Res>
    implements $GithubComparisonItemModelCopyWith<$Res> {
  _$GithubComparisonItemModelCopyWithImpl(this._value, this._then);

  final GithubComparisonItemModel _value;
  // ignore: unused_field
  final $Res Function(GithubComparisonItemModel) _then;

  @override
  $Res call({
    Object? files = freezed,
    Object? status = freezed,
    Object? aheadBy = freezed,
    Object? behindBy = freezed,
  }) {
    return _then(_value.copyWith(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<GithubFilesItemModel>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      aheadBy: aheadBy == freezed
          ? _value.aheadBy
          : aheadBy // ignore: cast_nullable_to_non_nullable
              as int?,
      behindBy: behindBy == freezed
          ? _value.behindBy
          : behindBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GithubComparisonItemModelCopyWith<$Res>
    implements $GithubComparisonItemModelCopyWith<$Res> {
  factory _$GithubComparisonItemModelCopyWith(_GithubComparisonItemModel value,
          $Res Function(_GithubComparisonItemModel) then) =
      __$GithubComparisonItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GithubFilesItemModel>? files,
      String? status,
      int? aheadBy,
      int? behindBy});
}

/// @nodoc
class __$GithubComparisonItemModelCopyWithImpl<$Res>
    extends _$GithubComparisonItemModelCopyWithImpl<$Res>
    implements _$GithubComparisonItemModelCopyWith<$Res> {
  __$GithubComparisonItemModelCopyWithImpl(_GithubComparisonItemModel _value,
      $Res Function(_GithubComparisonItemModel) _then)
      : super(_value, (v) => _then(v as _GithubComparisonItemModel));

  @override
  _GithubComparisonItemModel get _value =>
      super._value as _GithubComparisonItemModel;

  @override
  $Res call({
    Object? files = freezed,
    Object? status = freezed,
    Object? aheadBy = freezed,
    Object? behindBy = freezed,
  }) {
    return _then(_GithubComparisonItemModel(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<GithubFilesItemModel>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      aheadBy: aheadBy == freezed
          ? _value.aheadBy
          : aheadBy // ignore: cast_nullable_to_non_nullable
              as int?,
      behindBy: behindBy == freezed
          ? _value.behindBy
          : behindBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GithubComparisonItemModel implements _GithubComparisonItemModel {
  const _$_GithubComparisonItemModel(
      {required this.files,
      required this.status,
      required this.aheadBy,
      required this.behindBy});

  factory _$_GithubComparisonItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubComparisonItemModelFromJson(json);

  @override
  final List<GithubFilesItemModel>? files;
  @override
  final String? status;
  @override
  final int? aheadBy;
  @override
  final int? behindBy;

  @override
  String toString() {
    return 'GithubComparisonItemModel(files: $files, status: $status, aheadBy: $aheadBy, behindBy: $behindBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubComparisonItemModel &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.aheadBy, aheadBy) ||
                const DeepCollectionEquality()
                    .equals(other.aheadBy, aheadBy)) &&
            (identical(other.behindBy, behindBy) ||
                const DeepCollectionEquality()
                    .equals(other.behindBy, behindBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(files) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(aheadBy) ^
      const DeepCollectionEquality().hash(behindBy);

  @JsonKey(ignore: true)
  @override
  _$GithubComparisonItemModelCopyWith<_GithubComparisonItemModel>
      get copyWith =>
          __$GithubComparisonItemModelCopyWithImpl<_GithubComparisonItemModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubComparisonItemModelToJson(this);
  }
}

abstract class _GithubComparisonItemModel implements GithubComparisonItemModel {
  const factory _GithubComparisonItemModel(
      {required List<GithubFilesItemModel>? files,
      required String? status,
      required int? aheadBy,
      required int? behindBy}) = _$_GithubComparisonItemModel;

  factory _GithubComparisonItemModel.fromJson(Map<String, dynamic> json) =
      _$_GithubComparisonItemModel.fromJson;

  @override
  List<GithubFilesItemModel>? get files => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  int? get aheadBy => throw _privateConstructorUsedError;
  @override
  int? get behindBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubComparisonItemModelCopyWith<_GithubComparisonItemModel>
      get copyWith => throw _privateConstructorUsedError;
}
