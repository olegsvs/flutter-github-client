// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'github.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GithubEventTearOff {
  const _$GithubEventTearOff();

  _GithubEvent call(
      {required GithubEventUser? actor,
      required String? type,
      required GithubEventRepo? repo,
      required DateTime? createdAt,
      required GithubEventPayload? payload,
      required String repoOwner,
      required String repoName}) {
    return _GithubEvent(
      actor: actor,
      type: type,
      repo: repo,
      createdAt: createdAt,
      payload: payload,
      repoOwner: repoOwner,
      repoName: repoName,
    );
  }
}

/// @nodoc
const $GithubEvent = _$GithubEventTearOff();

/// @nodoc
mixin _$GithubEvent {
  GithubEventUser? get actor => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  GithubEventRepo? get repo => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  GithubEventPayload? get payload => throw _privateConstructorUsedError;
  String get repoOwner => throw _privateConstructorUsedError;
  String get repoName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubEventCopyWith<GithubEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventCopyWith<$Res> {
  factory $GithubEventCopyWith(
          GithubEvent value, $Res Function(GithubEvent) then) =
      _$GithubEventCopyWithImpl<$Res>;
  $Res call(
      {GithubEventUser? actor,
      String? type,
      GithubEventRepo? repo,
      DateTime? createdAt,
      GithubEventPayload? payload,
      String repoOwner,
      String repoName});

  $GithubEventUserCopyWith<$Res>? get actor;
  $GithubEventRepoCopyWith<$Res>? get repo;
  $GithubEventPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$GithubEventCopyWithImpl<$Res> implements $GithubEventCopyWith<$Res> {
  _$GithubEventCopyWithImpl(this._value, this._then);

  final GithubEvent _value;
  // ignore: unused_field
  final $Res Function(GithubEvent) _then;

  @override
  $Res call({
    Object? actor = freezed,
    Object? type = freezed,
    Object? repo = freezed,
    Object? createdAt = freezed,
    Object? payload = freezed,
    Object? repoOwner = freezed,
    Object? repoName = freezed,
  }) {
    return _then(_value.copyWith(
      actor: actor == freezed
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as GithubEventUser?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      repo: repo == freezed
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as GithubEventRepo?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GithubEventPayload?,
      repoOwner: repoOwner == freezed
          ? _value.repoOwner
          : repoOwner // ignore: cast_nullable_to_non_nullable
              as String,
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GithubEventUserCopyWith<$Res>? get actor {
    if (_value.actor == null) {
      return null;
    }

    return $GithubEventUserCopyWith<$Res>(_value.actor!, (value) {
      return _then(_value.copyWith(actor: value));
    });
  }

  @override
  $GithubEventRepoCopyWith<$Res>? get repo {
    if (_value.repo == null) {
      return null;
    }

    return $GithubEventRepoCopyWith<$Res>(_value.repo!, (value) {
      return _then(_value.copyWith(repo: value));
    });
  }

  @override
  $GithubEventPayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $GithubEventPayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$GithubEventCopyWith<$Res>
    implements $GithubEventCopyWith<$Res> {
  factory _$GithubEventCopyWith(
          _GithubEvent value, $Res Function(_GithubEvent) then) =
      __$GithubEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {GithubEventUser? actor,
      String? type,
      GithubEventRepo? repo,
      DateTime? createdAt,
      GithubEventPayload? payload,
      String repoOwner,
      String repoName});

  @override
  $GithubEventUserCopyWith<$Res>? get actor;
  @override
  $GithubEventRepoCopyWith<$Res>? get repo;
  @override
  $GithubEventPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$GithubEventCopyWithImpl<$Res> extends _$GithubEventCopyWithImpl<$Res>
    implements _$GithubEventCopyWith<$Res> {
  __$GithubEventCopyWithImpl(
      _GithubEvent _value, $Res Function(_GithubEvent) _then)
      : super(_value, (v) => _then(v as _GithubEvent));

  @override
  _GithubEvent get _value => super._value as _GithubEvent;

  @override
  $Res call({
    Object? actor = freezed,
    Object? type = freezed,
    Object? repo = freezed,
    Object? createdAt = freezed,
    Object? payload = freezed,
    Object? repoOwner = freezed,
    Object? repoName = freezed,
  }) {
    return _then(_GithubEvent(
      actor: actor == freezed
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as GithubEventUser?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      repo: repo == freezed
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as GithubEventRepo?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GithubEventPayload?,
      repoOwner: repoOwner == freezed
          ? _value.repoOwner
          : repoOwner // ignore: cast_nullable_to_non_nullable
              as String,
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GithubEvent implements _GithubEvent {
  const _$_GithubEvent(
      {required this.actor,
      required this.type,
      required this.repo,
      required this.createdAt,
      required this.payload,
      required this.repoOwner,
      required this.repoName});

  @override
  final GithubEventUser? actor;
  @override
  final String? type;
  @override
  final GithubEventRepo? repo;
  @override
  final DateTime? createdAt;
  @override
  final GithubEventPayload? payload;
  @override
  final String repoOwner;
  @override
  final String repoName;

  @override
  String toString() {
    return 'GithubEvent(actor: $actor, type: $type, repo: $repo, createdAt: $createdAt, payload: $payload, repoOwner: $repoOwner, repoName: $repoName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEvent &&
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
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.repoOwner, repoOwner) ||
                const DeepCollectionEquality()
                    .equals(other.repoOwner, repoOwner)) &&
            (identical(other.repoName, repoName) ||
                const DeepCollectionEquality()
                    .equals(other.repoName, repoName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(actor) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(repo) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(repoOwner) ^
      const DeepCollectionEquality().hash(repoName);

  @JsonKey(ignore: true)
  @override
  _$GithubEventCopyWith<_GithubEvent> get copyWith =>
      __$GithubEventCopyWithImpl<_GithubEvent>(this, _$identity);
}

abstract class _GithubEvent implements GithubEvent {
  const factory _GithubEvent(
      {required GithubEventUser? actor,
      required String? type,
      required GithubEventRepo? repo,
      required DateTime? createdAt,
      required GithubEventPayload? payload,
      required String repoOwner,
      required String repoName}) = _$_GithubEvent;

  @override
  GithubEventUser? get actor => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  GithubEventRepo? get repo => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  GithubEventPayload? get payload => throw _privateConstructorUsedError;
  @override
  String get repoOwner => throw _privateConstructorUsedError;
  @override
  String get repoName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventCopyWith<_GithubEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubEventUserTearOff {
  const _$GithubEventUserTearOff();

  _GithubEventUser call({required String? login, required String? avatarUrl}) {
    return _GithubEventUser(
      login: login,
      avatarUrl: avatarUrl,
    );
  }
}

/// @nodoc
const $GithubEventUser = _$GithubEventUserTearOff();

/// @nodoc
mixin _$GithubEventUser {
  String? get login => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubEventUserCopyWith<GithubEventUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventUserCopyWith<$Res> {
  factory $GithubEventUserCopyWith(
          GithubEventUser value, $Res Function(GithubEventUser) then) =
      _$GithubEventUserCopyWithImpl<$Res>;
  $Res call({String? login, String? avatarUrl});
}

/// @nodoc
class _$GithubEventUserCopyWithImpl<$Res>
    implements $GithubEventUserCopyWith<$Res> {
  _$GithubEventUserCopyWithImpl(this._value, this._then);

  final GithubEventUser _value;
  // ignore: unused_field
  final $Res Function(GithubEventUser) _then;

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
abstract class _$GithubEventUserCopyWith<$Res>
    implements $GithubEventUserCopyWith<$Res> {
  factory _$GithubEventUserCopyWith(
          _GithubEventUser value, $Res Function(_GithubEventUser) then) =
      __$GithubEventUserCopyWithImpl<$Res>;
  @override
  $Res call({String? login, String? avatarUrl});
}

/// @nodoc
class __$GithubEventUserCopyWithImpl<$Res>
    extends _$GithubEventUserCopyWithImpl<$Res>
    implements _$GithubEventUserCopyWith<$Res> {
  __$GithubEventUserCopyWithImpl(
      _GithubEventUser _value, $Res Function(_GithubEventUser) _then)
      : super(_value, (v) => _then(v as _GithubEventUser));

  @override
  _GithubEventUser get _value => super._value as _GithubEventUser;

  @override
  $Res call({
    Object? login = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_GithubEventUser(
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

class _$_GithubEventUser implements _GithubEventUser {
  const _$_GithubEventUser({required this.login, required this.avatarUrl});

  @override
  final String? login;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'GithubEventUser(login: $login, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventUser &&
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
  _$GithubEventUserCopyWith<_GithubEventUser> get copyWith =>
      __$GithubEventUserCopyWithImpl<_GithubEventUser>(this, _$identity);
}

abstract class _GithubEventUser implements GithubEventUser {
  const factory _GithubEventUser(
      {required String? login,
      required String? avatarUrl}) = _$_GithubEventUser;

  @override
  String? get login => throw _privateConstructorUsedError;
  @override
  String? get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventUserCopyWith<_GithubEventUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubEventRepoTearOff {
  const _$GithubEventRepoTearOff();

  _GithubEventRepo call({required String? name}) {
    return _GithubEventRepo(
      name: name,
    );
  }
}

/// @nodoc
const $GithubEventRepo = _$GithubEventRepoTearOff();

/// @nodoc
mixin _$GithubEventRepo {
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubEventRepoCopyWith<GithubEventRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventRepoCopyWith<$Res> {
  factory $GithubEventRepoCopyWith(
          GithubEventRepo value, $Res Function(GithubEventRepo) then) =
      _$GithubEventRepoCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$GithubEventRepoCopyWithImpl<$Res>
    implements $GithubEventRepoCopyWith<$Res> {
  _$GithubEventRepoCopyWithImpl(this._value, this._then);

  final GithubEventRepo _value;
  // ignore: unused_field
  final $Res Function(GithubEventRepo) _then;

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
abstract class _$GithubEventRepoCopyWith<$Res>
    implements $GithubEventRepoCopyWith<$Res> {
  factory _$GithubEventRepoCopyWith(
          _GithubEventRepo value, $Res Function(_GithubEventRepo) then) =
      __$GithubEventRepoCopyWithImpl<$Res>;
  @override
  $Res call({String? name});
}

/// @nodoc
class __$GithubEventRepoCopyWithImpl<$Res>
    extends _$GithubEventRepoCopyWithImpl<$Res>
    implements _$GithubEventRepoCopyWith<$Res> {
  __$GithubEventRepoCopyWithImpl(
      _GithubEventRepo _value, $Res Function(_GithubEventRepo) _then)
      : super(_value, (v) => _then(v as _GithubEventRepo));

  @override
  _GithubEventRepo get _value => super._value as _GithubEventRepo;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_GithubEventRepo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GithubEventRepo implements _GithubEventRepo {
  const _$_GithubEventRepo({required this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'GithubEventRepo(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventRepo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$GithubEventRepoCopyWith<_GithubEventRepo> get copyWith =>
      __$GithubEventRepoCopyWithImpl<_GithubEventRepo>(this, _$identity);
}

abstract class _GithubEventRepo implements GithubEventRepo {
  const factory _GithubEventRepo({required String? name}) = _$_GithubEventRepo;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventRepoCopyWith<_GithubEventRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubEventPayloadTearOff {
  const _$GithubEventPayloadTearOff();

  _GithubEventPayload call(
      {required GithubEventIssue? issue,
      required GithubEventIssue? pullRequest,
      required GithubEventComment? comment,
      required GithubEventRelease? release,
      required String? action,
      required String? ref,
      required String? refType,
      required String? before,
      required String? head,
      required List<GithubEventCommit>? commits,
      required Map<String, dynamic>? forkee,
      required List<GithubPagesItem>? pages,
      required GithubSecurityItem? securityAdvisory,
      required GithubAlertItem? alert,
      required GithubProjectItem? project,
      required GithubProjectColumnItem? projectColumn,
      required GithubInstallationRepositoriesItem? installation,
      required GithubCheckrunItem? checkRun,
      required GithubCheckSuiteItem? checkSuite,
      required GithubContentReferenceItem? contentReference}) {
    return _GithubEventPayload(
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
}

/// @nodoc
const $GithubEventPayload = _$GithubEventPayloadTearOff();

/// @nodoc
mixin _$GithubEventPayload {
  GithubEventIssue? get issue => throw _privateConstructorUsedError;
  GithubEventIssue? get pullRequest => throw _privateConstructorUsedError;
  GithubEventComment? get comment => throw _privateConstructorUsedError;
  GithubEventRelease? get release => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get ref => throw _privateConstructorUsedError;
  String? get refType => throw _privateConstructorUsedError;
  String? get before => throw _privateConstructorUsedError;
  String? get head => throw _privateConstructorUsedError;
  List<GithubEventCommit>? get commits => throw _privateConstructorUsedError;
  Map<String, dynamic>? get forkee => throw _privateConstructorUsedError;
  List<GithubPagesItem>? get pages => throw _privateConstructorUsedError;
  GithubSecurityItem? get securityAdvisory =>
      throw _privateConstructorUsedError;
  GithubAlertItem? get alert => throw _privateConstructorUsedError;
  GithubProjectItem? get project => throw _privateConstructorUsedError;
  GithubProjectColumnItem? get projectColumn =>
      throw _privateConstructorUsedError;
  GithubInstallationRepositoriesItem? get installation =>
      throw _privateConstructorUsedError;
  GithubCheckrunItem? get checkRun => throw _privateConstructorUsedError;
  GithubCheckSuiteItem? get checkSuite => throw _privateConstructorUsedError;
  GithubContentReferenceItem? get contentReference =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubEventPayloadCopyWith<GithubEventPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventPayloadCopyWith<$Res> {
  factory $GithubEventPayloadCopyWith(
          GithubEventPayload value, $Res Function(GithubEventPayload) then) =
      _$GithubEventPayloadCopyWithImpl<$Res>;
  $Res call(
      {GithubEventIssue? issue,
      GithubEventIssue? pullRequest,
      GithubEventComment? comment,
      GithubEventRelease? release,
      String? action,
      String? ref,
      String? refType,
      String? before,
      String? head,
      List<GithubEventCommit>? commits,
      Map<String, dynamic>? forkee,
      List<GithubPagesItem>? pages,
      GithubSecurityItem? securityAdvisory,
      GithubAlertItem? alert,
      GithubProjectItem? project,
      GithubProjectColumnItem? projectColumn,
      GithubInstallationRepositoriesItem? installation,
      GithubCheckrunItem? checkRun,
      GithubCheckSuiteItem? checkSuite,
      GithubContentReferenceItem? contentReference});

  $GithubEventIssueCopyWith<$Res>? get issue;
  $GithubEventIssueCopyWith<$Res>? get pullRequest;
  $GithubEventCommentCopyWith<$Res>? get comment;
  $GithubEventReleaseCopyWith<$Res>? get release;
  $GithubSecurityItemCopyWith<$Res>? get securityAdvisory;
  $GithubAlertItemCopyWith<$Res>? get alert;
  $GithubProjectItemCopyWith<$Res>? get project;
  $GithubProjectColumnItemCopyWith<$Res>? get projectColumn;
  $GithubInstallationRepositoriesItemCopyWith<$Res>? get installation;
  $GithubCheckrunItemCopyWith<$Res>? get checkRun;
  $GithubCheckSuiteItemCopyWith<$Res>? get checkSuite;
  $GithubContentReferenceItemCopyWith<$Res>? get contentReference;
}

/// @nodoc
class _$GithubEventPayloadCopyWithImpl<$Res>
    implements $GithubEventPayloadCopyWith<$Res> {
  _$GithubEventPayloadCopyWithImpl(this._value, this._then);

  final GithubEventPayload _value;
  // ignore: unused_field
  final $Res Function(GithubEventPayload) _then;

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
              as GithubEventIssue?,
      pullRequest: pullRequest == freezed
          ? _value.pullRequest
          : pullRequest // ignore: cast_nullable_to_non_nullable
              as GithubEventIssue?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as GithubEventComment?,
      release: release == freezed
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as GithubEventRelease?,
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
              as List<GithubEventCommit>?,
      forkee: forkee == freezed
          ? _value.forkee
          : forkee // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<GithubPagesItem>?,
      securityAdvisory: securityAdvisory == freezed
          ? _value.securityAdvisory
          : securityAdvisory // ignore: cast_nullable_to_non_nullable
              as GithubSecurityItem?,
      alert: alert == freezed
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as GithubAlertItem?,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as GithubProjectItem?,
      projectColumn: projectColumn == freezed
          ? _value.projectColumn
          : projectColumn // ignore: cast_nullable_to_non_nullable
              as GithubProjectColumnItem?,
      installation: installation == freezed
          ? _value.installation
          : installation // ignore: cast_nullable_to_non_nullable
              as GithubInstallationRepositoriesItem?,
      checkRun: checkRun == freezed
          ? _value.checkRun
          : checkRun // ignore: cast_nullable_to_non_nullable
              as GithubCheckrunItem?,
      checkSuite: checkSuite == freezed
          ? _value.checkSuite
          : checkSuite // ignore: cast_nullable_to_non_nullable
              as GithubCheckSuiteItem?,
      contentReference: contentReference == freezed
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as GithubContentReferenceItem?,
    ));
  }

  @override
  $GithubEventIssueCopyWith<$Res>? get issue {
    if (_value.issue == null) {
      return null;
    }

    return $GithubEventIssueCopyWith<$Res>(_value.issue!, (value) {
      return _then(_value.copyWith(issue: value));
    });
  }

  @override
  $GithubEventIssueCopyWith<$Res>? get pullRequest {
    if (_value.pullRequest == null) {
      return null;
    }

    return $GithubEventIssueCopyWith<$Res>(_value.pullRequest!, (value) {
      return _then(_value.copyWith(pullRequest: value));
    });
  }

  @override
  $GithubEventCommentCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $GithubEventCommentCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }

  @override
  $GithubEventReleaseCopyWith<$Res>? get release {
    if (_value.release == null) {
      return null;
    }

    return $GithubEventReleaseCopyWith<$Res>(_value.release!, (value) {
      return _then(_value.copyWith(release: value));
    });
  }

  @override
  $GithubSecurityItemCopyWith<$Res>? get securityAdvisory {
    if (_value.securityAdvisory == null) {
      return null;
    }

    return $GithubSecurityItemCopyWith<$Res>(_value.securityAdvisory!, (value) {
      return _then(_value.copyWith(securityAdvisory: value));
    });
  }

  @override
  $GithubAlertItemCopyWith<$Res>? get alert {
    if (_value.alert == null) {
      return null;
    }

    return $GithubAlertItemCopyWith<$Res>(_value.alert!, (value) {
      return _then(_value.copyWith(alert: value));
    });
  }

  @override
  $GithubProjectItemCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $GithubProjectItemCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value));
    });
  }

  @override
  $GithubProjectColumnItemCopyWith<$Res>? get projectColumn {
    if (_value.projectColumn == null) {
      return null;
    }

    return $GithubProjectColumnItemCopyWith<$Res>(_value.projectColumn!,
        (value) {
      return _then(_value.copyWith(projectColumn: value));
    });
  }

  @override
  $GithubInstallationRepositoriesItemCopyWith<$Res>? get installation {
    if (_value.installation == null) {
      return null;
    }

    return $GithubInstallationRepositoriesItemCopyWith<$Res>(
        _value.installation!, (value) {
      return _then(_value.copyWith(installation: value));
    });
  }

  @override
  $GithubCheckrunItemCopyWith<$Res>? get checkRun {
    if (_value.checkRun == null) {
      return null;
    }

    return $GithubCheckrunItemCopyWith<$Res>(_value.checkRun!, (value) {
      return _then(_value.copyWith(checkRun: value));
    });
  }

  @override
  $GithubCheckSuiteItemCopyWith<$Res>? get checkSuite {
    if (_value.checkSuite == null) {
      return null;
    }

    return $GithubCheckSuiteItemCopyWith<$Res>(_value.checkSuite!, (value) {
      return _then(_value.copyWith(checkSuite: value));
    });
  }

  @override
  $GithubContentReferenceItemCopyWith<$Res>? get contentReference {
    if (_value.contentReference == null) {
      return null;
    }

    return $GithubContentReferenceItemCopyWith<$Res>(_value.contentReference!,
        (value) {
      return _then(_value.copyWith(contentReference: value));
    });
  }
}

/// @nodoc
abstract class _$GithubEventPayloadCopyWith<$Res>
    implements $GithubEventPayloadCopyWith<$Res> {
  factory _$GithubEventPayloadCopyWith(
          _GithubEventPayload value, $Res Function(_GithubEventPayload) then) =
      __$GithubEventPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {GithubEventIssue? issue,
      GithubEventIssue? pullRequest,
      GithubEventComment? comment,
      GithubEventRelease? release,
      String? action,
      String? ref,
      String? refType,
      String? before,
      String? head,
      List<GithubEventCommit>? commits,
      Map<String, dynamic>? forkee,
      List<GithubPagesItem>? pages,
      GithubSecurityItem? securityAdvisory,
      GithubAlertItem? alert,
      GithubProjectItem? project,
      GithubProjectColumnItem? projectColumn,
      GithubInstallationRepositoriesItem? installation,
      GithubCheckrunItem? checkRun,
      GithubCheckSuiteItem? checkSuite,
      GithubContentReferenceItem? contentReference});

  @override
  $GithubEventIssueCopyWith<$Res>? get issue;
  @override
  $GithubEventIssueCopyWith<$Res>? get pullRequest;
  @override
  $GithubEventCommentCopyWith<$Res>? get comment;
  @override
  $GithubEventReleaseCopyWith<$Res>? get release;
  @override
  $GithubSecurityItemCopyWith<$Res>? get securityAdvisory;
  @override
  $GithubAlertItemCopyWith<$Res>? get alert;
  @override
  $GithubProjectItemCopyWith<$Res>? get project;
  @override
  $GithubProjectColumnItemCopyWith<$Res>? get projectColumn;
  @override
  $GithubInstallationRepositoriesItemCopyWith<$Res>? get installation;
  @override
  $GithubCheckrunItemCopyWith<$Res>? get checkRun;
  @override
  $GithubCheckSuiteItemCopyWith<$Res>? get checkSuite;
  @override
  $GithubContentReferenceItemCopyWith<$Res>? get contentReference;
}

/// @nodoc
class __$GithubEventPayloadCopyWithImpl<$Res>
    extends _$GithubEventPayloadCopyWithImpl<$Res>
    implements _$GithubEventPayloadCopyWith<$Res> {
  __$GithubEventPayloadCopyWithImpl(
      _GithubEventPayload _value, $Res Function(_GithubEventPayload) _then)
      : super(_value, (v) => _then(v as _GithubEventPayload));

  @override
  _GithubEventPayload get _value => super._value as _GithubEventPayload;

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
    return _then(_GithubEventPayload(
      issue: issue == freezed
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as GithubEventIssue?,
      pullRequest: pullRequest == freezed
          ? _value.pullRequest
          : pullRequest // ignore: cast_nullable_to_non_nullable
              as GithubEventIssue?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as GithubEventComment?,
      release: release == freezed
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as GithubEventRelease?,
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
              as List<GithubEventCommit>?,
      forkee: forkee == freezed
          ? _value.forkee
          : forkee // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<GithubPagesItem>?,
      securityAdvisory: securityAdvisory == freezed
          ? _value.securityAdvisory
          : securityAdvisory // ignore: cast_nullable_to_non_nullable
              as GithubSecurityItem?,
      alert: alert == freezed
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as GithubAlertItem?,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as GithubProjectItem?,
      projectColumn: projectColumn == freezed
          ? _value.projectColumn
          : projectColumn // ignore: cast_nullable_to_non_nullable
              as GithubProjectColumnItem?,
      installation: installation == freezed
          ? _value.installation
          : installation // ignore: cast_nullable_to_non_nullable
              as GithubInstallationRepositoriesItem?,
      checkRun: checkRun == freezed
          ? _value.checkRun
          : checkRun // ignore: cast_nullable_to_non_nullable
              as GithubCheckrunItem?,
      checkSuite: checkSuite == freezed
          ? _value.checkSuite
          : checkSuite // ignore: cast_nullable_to_non_nullable
              as GithubCheckSuiteItem?,
      contentReference: contentReference == freezed
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as GithubContentReferenceItem?,
    ));
  }
}

/// @nodoc

class _$_GithubEventPayload implements _GithubEventPayload {
  const _$_GithubEventPayload(
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

  @override
  final GithubEventIssue? issue;
  @override
  final GithubEventIssue? pullRequest;
  @override
  final GithubEventComment? comment;
  @override
  final GithubEventRelease? release;
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
  final List<GithubEventCommit>? commits;
  @override
  final Map<String, dynamic>? forkee;
  @override
  final List<GithubPagesItem>? pages;
  @override
  final GithubSecurityItem? securityAdvisory;
  @override
  final GithubAlertItem? alert;
  @override
  final GithubProjectItem? project;
  @override
  final GithubProjectColumnItem? projectColumn;
  @override
  final GithubInstallationRepositoriesItem? installation;
  @override
  final GithubCheckrunItem? checkRun;
  @override
  final GithubCheckSuiteItem? checkSuite;
  @override
  final GithubContentReferenceItem? contentReference;

  @override
  String toString() {
    return 'GithubEventPayload(issue: $issue, pullRequest: $pullRequest, comment: $comment, release: $release, action: $action, ref: $ref, refType: $refType, before: $before, head: $head, commits: $commits, forkee: $forkee, pages: $pages, securityAdvisory: $securityAdvisory, alert: $alert, project: $project, projectColumn: $projectColumn, installation: $installation, checkRun: $checkRun, checkSuite: $checkSuite, contentReference: $contentReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventPayload &&
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
  _$GithubEventPayloadCopyWith<_GithubEventPayload> get copyWith =>
      __$GithubEventPayloadCopyWithImpl<_GithubEventPayload>(this, _$identity);
}

abstract class _GithubEventPayload implements GithubEventPayload {
  const factory _GithubEventPayload(
          {required GithubEventIssue? issue,
          required GithubEventIssue? pullRequest,
          required GithubEventComment? comment,
          required GithubEventRelease? release,
          required String? action,
          required String? ref,
          required String? refType,
          required String? before,
          required String? head,
          required List<GithubEventCommit>? commits,
          required Map<String, dynamic>? forkee,
          required List<GithubPagesItem>? pages,
          required GithubSecurityItem? securityAdvisory,
          required GithubAlertItem? alert,
          required GithubProjectItem? project,
          required GithubProjectColumnItem? projectColumn,
          required GithubInstallationRepositoriesItem? installation,
          required GithubCheckrunItem? checkRun,
          required GithubCheckSuiteItem? checkSuite,
          required GithubContentReferenceItem? contentReference}) =
      _$_GithubEventPayload;

  @override
  GithubEventIssue? get issue => throw _privateConstructorUsedError;
  @override
  GithubEventIssue? get pullRequest => throw _privateConstructorUsedError;
  @override
  GithubEventComment? get comment => throw _privateConstructorUsedError;
  @override
  GithubEventRelease? get release => throw _privateConstructorUsedError;
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
  List<GithubEventCommit>? get commits => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get forkee => throw _privateConstructorUsedError;
  @override
  List<GithubPagesItem>? get pages => throw _privateConstructorUsedError;
  @override
  GithubSecurityItem? get securityAdvisory =>
      throw _privateConstructorUsedError;
  @override
  GithubAlertItem? get alert => throw _privateConstructorUsedError;
  @override
  GithubProjectItem? get project => throw _privateConstructorUsedError;
  @override
  GithubProjectColumnItem? get projectColumn =>
      throw _privateConstructorUsedError;
  @override
  GithubInstallationRepositoriesItem? get installation =>
      throw _privateConstructorUsedError;
  @override
  GithubCheckrunItem? get checkRun => throw _privateConstructorUsedError;
  @override
  GithubCheckSuiteItem? get checkSuite => throw _privateConstructorUsedError;
  @override
  GithubContentReferenceItem? get contentReference =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventPayloadCopyWith<_GithubEventPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubEventIssueTearOff {
  const _$GithubEventIssueTearOff();

  _GithubEventIssue call(
      {required String? title,
      required GithubEventUser? user,
      required int? number,
      required String? body,
      required dynamic pullRequest,
      required String? state,
      required int? comments,
      required bool? merged,
      required DateTime? createdAt,
      required bool isPullRequestComment}) {
    return _GithubEventIssue(
      title: title,
      user: user,
      number: number,
      body: body,
      pullRequest: pullRequest,
      state: state,
      comments: comments,
      merged: merged,
      createdAt: createdAt,
      isPullRequestComment: isPullRequestComment,
    );
  }
}

/// @nodoc
const $GithubEventIssue = _$GithubEventIssueTearOff();

/// @nodoc
mixin _$GithubEventIssue {
  String? get title => throw _privateConstructorUsedError;
  GithubEventUser? get user => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  dynamic get pullRequest => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  int? get comments => throw _privateConstructorUsedError;
  bool? get merged => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  bool get isPullRequestComment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubEventIssueCopyWith<GithubEventIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventIssueCopyWith<$Res> {
  factory $GithubEventIssueCopyWith(
          GithubEventIssue value, $Res Function(GithubEventIssue) then) =
      _$GithubEventIssueCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      GithubEventUser? user,
      int? number,
      String? body,
      dynamic pullRequest,
      String? state,
      int? comments,
      bool? merged,
      DateTime? createdAt,
      bool isPullRequestComment});

  $GithubEventUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$GithubEventIssueCopyWithImpl<$Res>
    implements $GithubEventIssueCopyWith<$Res> {
  _$GithubEventIssueCopyWithImpl(this._value, this._then);

  final GithubEventIssue _value;
  // ignore: unused_field
  final $Res Function(GithubEventIssue) _then;

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
    Object? isPullRequestComment = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GithubEventUser?,
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
      isPullRequestComment: isPullRequestComment == freezed
          ? _value.isPullRequestComment
          : isPullRequestComment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $GithubEventUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $GithubEventUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$GithubEventIssueCopyWith<$Res>
    implements $GithubEventIssueCopyWith<$Res> {
  factory _$GithubEventIssueCopyWith(
          _GithubEventIssue value, $Res Function(_GithubEventIssue) then) =
      __$GithubEventIssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      GithubEventUser? user,
      int? number,
      String? body,
      dynamic pullRequest,
      String? state,
      int? comments,
      bool? merged,
      DateTime? createdAt,
      bool isPullRequestComment});

  @override
  $GithubEventUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$GithubEventIssueCopyWithImpl<$Res>
    extends _$GithubEventIssueCopyWithImpl<$Res>
    implements _$GithubEventIssueCopyWith<$Res> {
  __$GithubEventIssueCopyWithImpl(
      _GithubEventIssue _value, $Res Function(_GithubEventIssue) _then)
      : super(_value, (v) => _then(v as _GithubEventIssue));

  @override
  _GithubEventIssue get _value => super._value as _GithubEventIssue;

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
    Object? isPullRequestComment = freezed,
  }) {
    return _then(_GithubEventIssue(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GithubEventUser?,
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
      isPullRequestComment: isPullRequestComment == freezed
          ? _value.isPullRequestComment
          : isPullRequestComment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GithubEventIssue implements _GithubEventIssue {
  const _$_GithubEventIssue(
      {required this.title,
      required this.user,
      required this.number,
      required this.body,
      required this.pullRequest,
      required this.state,
      required this.comments,
      required this.merged,
      required this.createdAt,
      required this.isPullRequestComment});

  @override
  final String? title;
  @override
  final GithubEventUser? user;
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
  final bool isPullRequestComment;

  @override
  String toString() {
    return 'GithubEventIssue(title: $title, user: $user, number: $number, body: $body, pullRequest: $pullRequest, state: $state, comments: $comments, merged: $merged, createdAt: $createdAt, isPullRequestComment: $isPullRequestComment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventIssue &&
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
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.isPullRequestComment, isPullRequestComment) ||
                const DeepCollectionEquality()
                    .equals(other.isPullRequestComment, isPullRequestComment)));
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
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(isPullRequestComment);

  @JsonKey(ignore: true)
  @override
  _$GithubEventIssueCopyWith<_GithubEventIssue> get copyWith =>
      __$GithubEventIssueCopyWithImpl<_GithubEventIssue>(this, _$identity);
}

abstract class _GithubEventIssue implements GithubEventIssue {
  const factory _GithubEventIssue(
      {required String? title,
      required GithubEventUser? user,
      required int? number,
      required String? body,
      required dynamic pullRequest,
      required String? state,
      required int? comments,
      required bool? merged,
      required DateTime? createdAt,
      required bool isPullRequestComment}) = _$_GithubEventIssue;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  GithubEventUser? get user => throw _privateConstructorUsedError;
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
  bool get isPullRequestComment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventIssueCopyWith<_GithubEventIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubEventCommentTearOff {
  const _$GithubEventCommentTearOff();

  _GithubEventComment call(
      {required String? body,
      required GithubEventUser? user,
      required String? commitId,
      required String? htmlUrl}) {
    return _GithubEventComment(
      body: body,
      user: user,
      commitId: commitId,
      htmlUrl: htmlUrl,
    );
  }
}

/// @nodoc
const $GithubEventComment = _$GithubEventCommentTearOff();

/// @nodoc
mixin _$GithubEventComment {
  String? get body => throw _privateConstructorUsedError;
  GithubEventUser? get user => throw _privateConstructorUsedError;
  String? get commitId => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubEventCommentCopyWith<GithubEventComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventCommentCopyWith<$Res> {
  factory $GithubEventCommentCopyWith(
          GithubEventComment value, $Res Function(GithubEventComment) then) =
      _$GithubEventCommentCopyWithImpl<$Res>;
  $Res call(
      {String? body, GithubEventUser? user, String? commitId, String? htmlUrl});

  $GithubEventUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$GithubEventCommentCopyWithImpl<$Res>
    implements $GithubEventCommentCopyWith<$Res> {
  _$GithubEventCommentCopyWithImpl(this._value, this._then);

  final GithubEventComment _value;
  // ignore: unused_field
  final $Res Function(GithubEventComment) _then;

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
              as GithubEventUser?,
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
  $GithubEventUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $GithubEventUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$GithubEventCommentCopyWith<$Res>
    implements $GithubEventCommentCopyWith<$Res> {
  factory _$GithubEventCommentCopyWith(
          _GithubEventComment value, $Res Function(_GithubEventComment) then) =
      __$GithubEventCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? body, GithubEventUser? user, String? commitId, String? htmlUrl});

  @override
  $GithubEventUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$GithubEventCommentCopyWithImpl<$Res>
    extends _$GithubEventCommentCopyWithImpl<$Res>
    implements _$GithubEventCommentCopyWith<$Res> {
  __$GithubEventCommentCopyWithImpl(
      _GithubEventComment _value, $Res Function(_GithubEventComment) _then)
      : super(_value, (v) => _then(v as _GithubEventComment));

  @override
  _GithubEventComment get _value => super._value as _GithubEventComment;

  @override
  $Res call({
    Object? body = freezed,
    Object? user = freezed,
    Object? commitId = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_GithubEventComment(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GithubEventUser?,
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

class _$_GithubEventComment implements _GithubEventComment {
  const _$_GithubEventComment(
      {required this.body,
      required this.user,
      required this.commitId,
      required this.htmlUrl});

  @override
  final String? body;
  @override
  final GithubEventUser? user;
  @override
  final String? commitId;
  @override
  final String? htmlUrl;

  @override
  String toString() {
    return 'GithubEventComment(body: $body, user: $user, commitId: $commitId, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventComment &&
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
  _$GithubEventCommentCopyWith<_GithubEventComment> get copyWith =>
      __$GithubEventCommentCopyWithImpl<_GithubEventComment>(this, _$identity);
}

abstract class _GithubEventComment implements GithubEventComment {
  const factory _GithubEventComment(
      {required String? body,
      required GithubEventUser? user,
      required String? commitId,
      required String? htmlUrl}) = _$_GithubEventComment;

  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  GithubEventUser? get user => throw _privateConstructorUsedError;
  @override
  String? get commitId => throw _privateConstructorUsedError;
  @override
  String? get htmlUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventCommentCopyWith<_GithubEventComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubEventCommitTearOff {
  const _$GithubEventCommitTearOff();

  _GithubEventCommit call({required String? sha, required String? message}) {
    return _GithubEventCommit(
      sha: sha,
      message: message,
    );
  }
}

/// @nodoc
const $GithubEventCommit = _$GithubEventCommitTearOff();

/// @nodoc
mixin _$GithubEventCommit {
  String? get sha => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubEventCommitCopyWith<GithubEventCommit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventCommitCopyWith<$Res> {
  factory $GithubEventCommitCopyWith(
          GithubEventCommit value, $Res Function(GithubEventCommit) then) =
      _$GithubEventCommitCopyWithImpl<$Res>;
  $Res call({String? sha, String? message});
}

/// @nodoc
class _$GithubEventCommitCopyWithImpl<$Res>
    implements $GithubEventCommitCopyWith<$Res> {
  _$GithubEventCommitCopyWithImpl(this._value, this._then);

  final GithubEventCommit _value;
  // ignore: unused_field
  final $Res Function(GithubEventCommit) _then;

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
abstract class _$GithubEventCommitCopyWith<$Res>
    implements $GithubEventCommitCopyWith<$Res> {
  factory _$GithubEventCommitCopyWith(
          _GithubEventCommit value, $Res Function(_GithubEventCommit) then) =
      __$GithubEventCommitCopyWithImpl<$Res>;
  @override
  $Res call({String? sha, String? message});
}

/// @nodoc
class __$GithubEventCommitCopyWithImpl<$Res>
    extends _$GithubEventCommitCopyWithImpl<$Res>
    implements _$GithubEventCommitCopyWith<$Res> {
  __$GithubEventCommitCopyWithImpl(
      _GithubEventCommit _value, $Res Function(_GithubEventCommit) _then)
      : super(_value, (v) => _then(v as _GithubEventCommit));

  @override
  _GithubEventCommit get _value => super._value as _GithubEventCommit;

  @override
  $Res call({
    Object? sha = freezed,
    Object? message = freezed,
  }) {
    return _then(_GithubEventCommit(
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

class _$_GithubEventCommit implements _GithubEventCommit {
  const _$_GithubEventCommit({required this.sha, required this.message});

  @override
  final String? sha;
  @override
  final String? message;

  @override
  String toString() {
    return 'GithubEventCommit(sha: $sha, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventCommit &&
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
  _$GithubEventCommitCopyWith<_GithubEventCommit> get copyWith =>
      __$GithubEventCommitCopyWithImpl<_GithubEventCommit>(this, _$identity);
}

abstract class _GithubEventCommit implements GithubEventCommit {
  const factory _GithubEventCommit(
      {required String? sha, required String? message}) = _$_GithubEventCommit;

  @override
  String? get sha => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventCommitCopyWith<_GithubEventCommit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubEventReleaseTearOff {
  const _$GithubEventReleaseTearOff();

  _GithubEventRelease call(
      {required String? htmlUrl, required String? tagName}) {
    return _GithubEventRelease(
      htmlUrl: htmlUrl,
      tagName: tagName,
    );
  }
}

/// @nodoc
const $GithubEventRelease = _$GithubEventReleaseTearOff();

/// @nodoc
mixin _$GithubEventRelease {
  String? get htmlUrl => throw _privateConstructorUsedError;
  String? get tagName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubEventReleaseCopyWith<GithubEventRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubEventReleaseCopyWith<$Res> {
  factory $GithubEventReleaseCopyWith(
          GithubEventRelease value, $Res Function(GithubEventRelease) then) =
      _$GithubEventReleaseCopyWithImpl<$Res>;
  $Res call({String? htmlUrl, String? tagName});
}

/// @nodoc
class _$GithubEventReleaseCopyWithImpl<$Res>
    implements $GithubEventReleaseCopyWith<$Res> {
  _$GithubEventReleaseCopyWithImpl(this._value, this._then);

  final GithubEventRelease _value;
  // ignore: unused_field
  final $Res Function(GithubEventRelease) _then;

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
abstract class _$GithubEventReleaseCopyWith<$Res>
    implements $GithubEventReleaseCopyWith<$Res> {
  factory _$GithubEventReleaseCopyWith(
          _GithubEventRelease value, $Res Function(_GithubEventRelease) then) =
      __$GithubEventReleaseCopyWithImpl<$Res>;
  @override
  $Res call({String? htmlUrl, String? tagName});
}

/// @nodoc
class __$GithubEventReleaseCopyWithImpl<$Res>
    extends _$GithubEventReleaseCopyWithImpl<$Res>
    implements _$GithubEventReleaseCopyWith<$Res> {
  __$GithubEventReleaseCopyWithImpl(
      _GithubEventRelease _value, $Res Function(_GithubEventRelease) _then)
      : super(_value, (v) => _then(v as _GithubEventRelease));

  @override
  _GithubEventRelease get _value => super._value as _GithubEventRelease;

  @override
  $Res call({
    Object? htmlUrl = freezed,
    Object? tagName = freezed,
  }) {
    return _then(_GithubEventRelease(
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

class _$_GithubEventRelease implements _GithubEventRelease {
  const _$_GithubEventRelease({required this.htmlUrl, required this.tagName});

  @override
  final String? htmlUrl;
  @override
  final String? tagName;

  @override
  String toString() {
    return 'GithubEventRelease(htmlUrl: $htmlUrl, tagName: $tagName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubEventRelease &&
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
  _$GithubEventReleaseCopyWith<_GithubEventRelease> get copyWith =>
      __$GithubEventReleaseCopyWithImpl<_GithubEventRelease>(this, _$identity);
}

abstract class _GithubEventRelease implements GithubEventRelease {
  const factory _GithubEventRelease(
      {required String? htmlUrl,
      required String? tagName}) = _$_GithubEventRelease;

  @override
  String? get htmlUrl => throw _privateConstructorUsedError;
  @override
  String? get tagName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubEventReleaseCopyWith<_GithubEventRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubNotificationItemTearOff {
  const _$GithubNotificationItemTearOff();

  _GithubNotificationItem call(
      {required String? id,
      required GithubNotificationItemSubject? subject,
      required DateTime? updatedAt,
      required GithubNotificationItemRepo? repository,
      required bool? unread,
      required String? state,
      required String key}) {
    return _GithubNotificationItem(
      id: id,
      subject: subject,
      updatedAt: updatedAt,
      repository: repository,
      unread: unread,
      state: state,
      key: key,
    );
  }
}

/// @nodoc
const $GithubNotificationItem = _$GithubNotificationItemTearOff();

/// @nodoc
mixin _$GithubNotificationItem {
  String? get id => throw _privateConstructorUsedError;
  GithubNotificationItemSubject? get subject =>
      throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  GithubNotificationItemRepo? get repository =>
      throw _privateConstructorUsedError;
  bool? get unread => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubNotificationItemCopyWith<GithubNotificationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubNotificationItemCopyWith<$Res> {
  factory $GithubNotificationItemCopyWith(GithubNotificationItem value,
          $Res Function(GithubNotificationItem) then) =
      _$GithubNotificationItemCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      GithubNotificationItemSubject? subject,
      DateTime? updatedAt,
      GithubNotificationItemRepo? repository,
      bool? unread,
      String? state,
      String key});

  $GithubNotificationItemSubjectCopyWith<$Res>? get subject;
  $GithubNotificationItemRepoCopyWith<$Res>? get repository;
}

/// @nodoc
class _$GithubNotificationItemCopyWithImpl<$Res>
    implements $GithubNotificationItemCopyWith<$Res> {
  _$GithubNotificationItemCopyWithImpl(this._value, this._then);

  final GithubNotificationItem _value;
  // ignore: unused_field
  final $Res Function(GithubNotificationItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? updatedAt = freezed,
    Object? repository = freezed,
    Object? unread = freezed,
    Object? state = freezed,
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
              as GithubNotificationItemSubject?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as GithubNotificationItemRepo?,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as bool?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GithubNotificationItemSubjectCopyWith<$Res>? get subject {
    if (_value.subject == null) {
      return null;
    }

    return $GithubNotificationItemSubjectCopyWith<$Res>(_value.subject!,
        (value) {
      return _then(_value.copyWith(subject: value));
    });
  }

  @override
  $GithubNotificationItemRepoCopyWith<$Res>? get repository {
    if (_value.repository == null) {
      return null;
    }

    return $GithubNotificationItemRepoCopyWith<$Res>(_value.repository!,
        (value) {
      return _then(_value.copyWith(repository: value));
    });
  }
}

/// @nodoc
abstract class _$GithubNotificationItemCopyWith<$Res>
    implements $GithubNotificationItemCopyWith<$Res> {
  factory _$GithubNotificationItemCopyWith(_GithubNotificationItem value,
          $Res Function(_GithubNotificationItem) then) =
      __$GithubNotificationItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      GithubNotificationItemSubject? subject,
      DateTime? updatedAt,
      GithubNotificationItemRepo? repository,
      bool? unread,
      String? state,
      String key});

  @override
  $GithubNotificationItemSubjectCopyWith<$Res>? get subject;
  @override
  $GithubNotificationItemRepoCopyWith<$Res>? get repository;
}

/// @nodoc
class __$GithubNotificationItemCopyWithImpl<$Res>
    extends _$GithubNotificationItemCopyWithImpl<$Res>
    implements _$GithubNotificationItemCopyWith<$Res> {
  __$GithubNotificationItemCopyWithImpl(_GithubNotificationItem _value,
      $Res Function(_GithubNotificationItem) _then)
      : super(_value, (v) => _then(v as _GithubNotificationItem));

  @override
  _GithubNotificationItem get _value => super._value as _GithubNotificationItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? updatedAt = freezed,
    Object? repository = freezed,
    Object? unread = freezed,
    Object? state = freezed,
    Object? key = freezed,
  }) {
    return _then(_GithubNotificationItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as GithubNotificationItemSubject?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as GithubNotificationItemRepo?,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as bool?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GithubNotificationItem implements _GithubNotificationItem {
  const _$_GithubNotificationItem(
      {required this.id,
      required this.subject,
      required this.updatedAt,
      required this.repository,
      required this.unread,
      required this.state,
      required this.key});

  @override
  final String? id;
  @override
  final GithubNotificationItemSubject? subject;
  @override
  final DateTime? updatedAt;
  @override
  final GithubNotificationItemRepo? repository;
  @override
  final bool? unread;
  @override
  final String? state;
  @override
  final String key;

  @override
  String toString() {
    return 'GithubNotificationItem(id: $id, subject: $subject, updatedAt: $updatedAt, repository: $repository, unread: $unread, state: $state, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubNotificationItem &&
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
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
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
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  _$GithubNotificationItemCopyWith<_GithubNotificationItem> get copyWith =>
      __$GithubNotificationItemCopyWithImpl<_GithubNotificationItem>(
          this, _$identity);
}

abstract class _GithubNotificationItem implements GithubNotificationItem {
  const factory _GithubNotificationItem(
      {required String? id,
      required GithubNotificationItemSubject? subject,
      required DateTime? updatedAt,
      required GithubNotificationItemRepo? repository,
      required bool? unread,
      required String? state,
      required String key}) = _$_GithubNotificationItem;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  GithubNotificationItemSubject? get subject =>
      throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  GithubNotificationItemRepo? get repository =>
      throw _privateConstructorUsedError;
  @override
  bool? get unread => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubNotificationItemCopyWith<_GithubNotificationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubNotificationItemSubjectTearOff {
  const _$GithubNotificationItemSubjectTearOff();

  _GithubNotificationItemSubject call(
      {required String? title,
      required String? type,
      required String? url,
      required int? number}) {
    return _GithubNotificationItemSubject(
      title: title,
      type: type,
      url: url,
      number: number,
    );
  }
}

/// @nodoc
const $GithubNotificationItemSubject = _$GithubNotificationItemSubjectTearOff();

/// @nodoc
mixin _$GithubNotificationItemSubject {
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubNotificationItemSubjectCopyWith<GithubNotificationItemSubject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubNotificationItemSubjectCopyWith<$Res> {
  factory $GithubNotificationItemSubjectCopyWith(
          GithubNotificationItemSubject value,
          $Res Function(GithubNotificationItemSubject) then) =
      _$GithubNotificationItemSubjectCopyWithImpl<$Res>;
  $Res call({String? title, String? type, String? url, int? number});
}

/// @nodoc
class _$GithubNotificationItemSubjectCopyWithImpl<$Res>
    implements $GithubNotificationItemSubjectCopyWith<$Res> {
  _$GithubNotificationItemSubjectCopyWithImpl(this._value, this._then);

  final GithubNotificationItemSubject _value;
  // ignore: unused_field
  final $Res Function(GithubNotificationItemSubject) _then;

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
abstract class _$GithubNotificationItemSubjectCopyWith<$Res>
    implements $GithubNotificationItemSubjectCopyWith<$Res> {
  factory _$GithubNotificationItemSubjectCopyWith(
          _GithubNotificationItemSubject value,
          $Res Function(_GithubNotificationItemSubject) then) =
      __$GithubNotificationItemSubjectCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? type, String? url, int? number});
}

/// @nodoc
class __$GithubNotificationItemSubjectCopyWithImpl<$Res>
    extends _$GithubNotificationItemSubjectCopyWithImpl<$Res>
    implements _$GithubNotificationItemSubjectCopyWith<$Res> {
  __$GithubNotificationItemSubjectCopyWithImpl(
      _GithubNotificationItemSubject _value,
      $Res Function(_GithubNotificationItemSubject) _then)
      : super(_value, (v) => _then(v as _GithubNotificationItemSubject));

  @override
  _GithubNotificationItemSubject get _value =>
      super._value as _GithubNotificationItemSubject;

  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? url = freezed,
    Object? number = freezed,
  }) {
    return _then(_GithubNotificationItemSubject(
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

class _$_GithubNotificationItemSubject
    implements _GithubNotificationItemSubject {
  const _$_GithubNotificationItemSubject(
      {required this.title,
      required this.type,
      required this.url,
      required this.number});

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
    return 'GithubNotificationItemSubject(title: $title, type: $type, url: $url, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubNotificationItemSubject &&
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
  _$GithubNotificationItemSubjectCopyWith<_GithubNotificationItemSubject>
      get copyWith => __$GithubNotificationItemSubjectCopyWithImpl<
          _GithubNotificationItemSubject>(this, _$identity);
}

abstract class _GithubNotificationItemSubject
    implements GithubNotificationItemSubject {
  const factory _GithubNotificationItemSubject(
      {required String? title,
      required String? type,
      required String? url,
      required int? number}) = _$_GithubNotificationItemSubject;

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
  _$GithubNotificationItemSubjectCopyWith<_GithubNotificationItemSubject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubNotificationItemRepoTearOff {
  const _$GithubNotificationItemRepoTearOff();

  _GithubNotificationItemRepo call(
      {required String? fullName,
      required String owner,
      required String name}) {
    return _GithubNotificationItemRepo(
      fullName: fullName,
      owner: owner,
      name: name,
    );
  }
}

/// @nodoc
const $GithubNotificationItemRepo = _$GithubNotificationItemRepoTearOff();

/// @nodoc
mixin _$GithubNotificationItemRepo {
  String? get fullName => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubNotificationItemRepoCopyWith<GithubNotificationItemRepo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubNotificationItemRepoCopyWith<$Res> {
  factory $GithubNotificationItemRepoCopyWith(GithubNotificationItemRepo value,
          $Res Function(GithubNotificationItemRepo) then) =
      _$GithubNotificationItemRepoCopyWithImpl<$Res>;
  $Res call({String? fullName, String owner, String name});
}

/// @nodoc
class _$GithubNotificationItemRepoCopyWithImpl<$Res>
    implements $GithubNotificationItemRepoCopyWith<$Res> {
  _$GithubNotificationItemRepoCopyWithImpl(this._value, this._then);

  final GithubNotificationItemRepo _value;
  // ignore: unused_field
  final $Res Function(GithubNotificationItemRepo) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? owner = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GithubNotificationItemRepoCopyWith<$Res>
    implements $GithubNotificationItemRepoCopyWith<$Res> {
  factory _$GithubNotificationItemRepoCopyWith(
          _GithubNotificationItemRepo value,
          $Res Function(_GithubNotificationItemRepo) then) =
      __$GithubNotificationItemRepoCopyWithImpl<$Res>;
  @override
  $Res call({String? fullName, String owner, String name});
}

/// @nodoc
class __$GithubNotificationItemRepoCopyWithImpl<$Res>
    extends _$GithubNotificationItemRepoCopyWithImpl<$Res>
    implements _$GithubNotificationItemRepoCopyWith<$Res> {
  __$GithubNotificationItemRepoCopyWithImpl(_GithubNotificationItemRepo _value,
      $Res Function(_GithubNotificationItemRepo) _then)
      : super(_value, (v) => _then(v as _GithubNotificationItemRepo));

  @override
  _GithubNotificationItemRepo get _value =>
      super._value as _GithubNotificationItemRepo;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? owner = freezed,
    Object? name = freezed,
  }) {
    return _then(_GithubNotificationItemRepo(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GithubNotificationItemRepo implements _GithubNotificationItemRepo {
  const _$_GithubNotificationItemRepo(
      {required this.fullName, required this.owner, required this.name});

  @override
  final String? fullName;
  @override
  final String owner;
  @override
  final String name;

  @override
  String toString() {
    return 'GithubNotificationItemRepo(fullName: $fullName, owner: $owner, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubNotificationItemRepo &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$GithubNotificationItemRepoCopyWith<_GithubNotificationItemRepo>
      get copyWith => __$GithubNotificationItemRepoCopyWithImpl<
          _GithubNotificationItemRepo>(this, _$identity);
}

abstract class _GithubNotificationItemRepo
    implements GithubNotificationItemRepo {
  const factory _GithubNotificationItemRepo(
      {required String? fullName,
      required String owner,
      required String name}) = _$_GithubNotificationItemRepo;

  @override
  String? get fullName => throw _privateConstructorUsedError;
  @override
  String get owner => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubNotificationItemRepoCopyWith<_GithubNotificationItemRepo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubTreeItemTearOff {
  const _$GithubTreeItemTearOff();

  _GithubTreeItem call(
      {required String? name,
      required String? path,
      required int? size,
      required String? type,
      required String? downloadUrl,
      required String? content}) {
    return _GithubTreeItem(
      name: name,
      path: path,
      size: size,
      type: type,
      downloadUrl: downloadUrl,
      content: content,
    );
  }
}

/// @nodoc
const $GithubTreeItem = _$GithubTreeItemTearOff();

/// @nodoc
mixin _$GithubTreeItem {
  String? get name => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get downloadUrl => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubTreeItemCopyWith<GithubTreeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubTreeItemCopyWith<$Res> {
  factory $GithubTreeItemCopyWith(
          GithubTreeItem value, $Res Function(GithubTreeItem) then) =
      _$GithubTreeItemCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? path,
      int? size,
      String? type,
      String? downloadUrl,
      String? content});
}

/// @nodoc
class _$GithubTreeItemCopyWithImpl<$Res>
    implements $GithubTreeItemCopyWith<$Res> {
  _$GithubTreeItemCopyWithImpl(this._value, this._then);

  final GithubTreeItem _value;
  // ignore: unused_field
  final $Res Function(GithubTreeItem) _then;

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
abstract class _$GithubTreeItemCopyWith<$Res>
    implements $GithubTreeItemCopyWith<$Res> {
  factory _$GithubTreeItemCopyWith(
          _GithubTreeItem value, $Res Function(_GithubTreeItem) then) =
      __$GithubTreeItemCopyWithImpl<$Res>;
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
class __$GithubTreeItemCopyWithImpl<$Res>
    extends _$GithubTreeItemCopyWithImpl<$Res>
    implements _$GithubTreeItemCopyWith<$Res> {
  __$GithubTreeItemCopyWithImpl(
      _GithubTreeItem _value, $Res Function(_GithubTreeItem) _then)
      : super(_value, (v) => _then(v as _GithubTreeItem));

  @override
  _GithubTreeItem get _value => super._value as _GithubTreeItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? downloadUrl = freezed,
    Object? content = freezed,
  }) {
    return _then(_GithubTreeItem(
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

class _$_GithubTreeItem implements _GithubTreeItem {
  const _$_GithubTreeItem(
      {required this.name,
      required this.path,
      required this.size,
      required this.type,
      required this.downloadUrl,
      required this.content});

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
    return 'GithubTreeItem(name: $name, path: $path, size: $size, type: $type, downloadUrl: $downloadUrl, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubTreeItem &&
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
  _$GithubTreeItemCopyWith<_GithubTreeItem> get copyWith =>
      __$GithubTreeItemCopyWithImpl<_GithubTreeItem>(this, _$identity);
}

abstract class _GithubTreeItem implements GithubTreeItem {
  const factory _GithubTreeItem(
      {required String? name,
      required String? path,
      required int? size,
      required String? type,
      required String? downloadUrl,
      required String? content}) = _$_GithubTreeItem;

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
  _$GithubTreeItemCopyWith<_GithubTreeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubPagesItemTearOff {
  const _$GithubPagesItemTearOff();

  _GithubPagesItem call(
      {required String? pageName,
      required String? title,
      required String? action}) {
    return _GithubPagesItem(
      pageName: pageName,
      title: title,
      action: action,
    );
  }
}

/// @nodoc
const $GithubPagesItem = _$GithubPagesItemTearOff();

/// @nodoc
mixin _$GithubPagesItem {
  String? get pageName => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubPagesItemCopyWith<GithubPagesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubPagesItemCopyWith<$Res> {
  factory $GithubPagesItemCopyWith(
          GithubPagesItem value, $Res Function(GithubPagesItem) then) =
      _$GithubPagesItemCopyWithImpl<$Res>;
  $Res call({String? pageName, String? title, String? action});
}

/// @nodoc
class _$GithubPagesItemCopyWithImpl<$Res>
    implements $GithubPagesItemCopyWith<$Res> {
  _$GithubPagesItemCopyWithImpl(this._value, this._then);

  final GithubPagesItem _value;
  // ignore: unused_field
  final $Res Function(GithubPagesItem) _then;

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
abstract class _$GithubPagesItemCopyWith<$Res>
    implements $GithubPagesItemCopyWith<$Res> {
  factory _$GithubPagesItemCopyWith(
          _GithubPagesItem value, $Res Function(_GithubPagesItem) then) =
      __$GithubPagesItemCopyWithImpl<$Res>;
  @override
  $Res call({String? pageName, String? title, String? action});
}

/// @nodoc
class __$GithubPagesItemCopyWithImpl<$Res>
    extends _$GithubPagesItemCopyWithImpl<$Res>
    implements _$GithubPagesItemCopyWith<$Res> {
  __$GithubPagesItemCopyWithImpl(
      _GithubPagesItem _value, $Res Function(_GithubPagesItem) _then)
      : super(_value, (v) => _then(v as _GithubPagesItem));

  @override
  _GithubPagesItem get _value => super._value as _GithubPagesItem;

  @override
  $Res call({
    Object? pageName = freezed,
    Object? title = freezed,
    Object? action = freezed,
  }) {
    return _then(_GithubPagesItem(
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

class _$_GithubPagesItem implements _GithubPagesItem {
  const _$_GithubPagesItem(
      {required this.pageName, required this.title, required this.action});

  @override
  final String? pageName;
  @override
  final String? title;
  @override
  final String? action;

  @override
  String toString() {
    return 'GithubPagesItem(pageName: $pageName, title: $title, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubPagesItem &&
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
  _$GithubPagesItemCopyWith<_GithubPagesItem> get copyWith =>
      __$GithubPagesItemCopyWithImpl<_GithubPagesItem>(this, _$identity);
}

abstract class _GithubPagesItem implements GithubPagesItem {
  const factory _GithubPagesItem(
      {required String? pageName,
      required String? title,
      required String? action}) = _$_GithubPagesItem;

  @override
  String? get pageName => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubPagesItemCopyWith<_GithubPagesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubSecurityItemTearOff {
  const _$GithubSecurityItemTearOff();

  _GithubSecurityItem call(
      {required String? summary,
      required String? description,
      required String? severity}) {
    return _GithubSecurityItem(
      summary: summary,
      description: description,
      severity: severity,
    );
  }
}

/// @nodoc
const $GithubSecurityItem = _$GithubSecurityItemTearOff();

/// @nodoc
mixin _$GithubSecurityItem {
  String? get summary => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get severity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubSecurityItemCopyWith<GithubSecurityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubSecurityItemCopyWith<$Res> {
  factory $GithubSecurityItemCopyWith(
          GithubSecurityItem value, $Res Function(GithubSecurityItem) then) =
      _$GithubSecurityItemCopyWithImpl<$Res>;
  $Res call({String? summary, String? description, String? severity});
}

/// @nodoc
class _$GithubSecurityItemCopyWithImpl<$Res>
    implements $GithubSecurityItemCopyWith<$Res> {
  _$GithubSecurityItemCopyWithImpl(this._value, this._then);

  final GithubSecurityItem _value;
  // ignore: unused_field
  final $Res Function(GithubSecurityItem) _then;

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
abstract class _$GithubSecurityItemCopyWith<$Res>
    implements $GithubSecurityItemCopyWith<$Res> {
  factory _$GithubSecurityItemCopyWith(
          _GithubSecurityItem value, $Res Function(_GithubSecurityItem) then) =
      __$GithubSecurityItemCopyWithImpl<$Res>;
  @override
  $Res call({String? summary, String? description, String? severity});
}

/// @nodoc
class __$GithubSecurityItemCopyWithImpl<$Res>
    extends _$GithubSecurityItemCopyWithImpl<$Res>
    implements _$GithubSecurityItemCopyWith<$Res> {
  __$GithubSecurityItemCopyWithImpl(
      _GithubSecurityItem _value, $Res Function(_GithubSecurityItem) _then)
      : super(_value, (v) => _then(v as _GithubSecurityItem));

  @override
  _GithubSecurityItem get _value => super._value as _GithubSecurityItem;

  @override
  $Res call({
    Object? summary = freezed,
    Object? description = freezed,
    Object? severity = freezed,
  }) {
    return _then(_GithubSecurityItem(
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

class _$_GithubSecurityItem implements _GithubSecurityItem {
  const _$_GithubSecurityItem(
      {required this.summary,
      required this.description,
      required this.severity});

  @override
  final String? summary;
  @override
  final String? description;
  @override
  final String? severity;

  @override
  String toString() {
    return 'GithubSecurityItem(summary: $summary, description: $description, severity: $severity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubSecurityItem &&
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
  _$GithubSecurityItemCopyWith<_GithubSecurityItem> get copyWith =>
      __$GithubSecurityItemCopyWithImpl<_GithubSecurityItem>(this, _$identity);
}

abstract class _GithubSecurityItem implements GithubSecurityItem {
  const factory _GithubSecurityItem(
      {required String? summary,
      required String? description,
      required String? severity}) = _$_GithubSecurityItem;

  @override
  String? get summary => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get severity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubSecurityItemCopyWith<_GithubSecurityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubAlertItemTearOff {
  const _$GithubAlertItemTearOff();

  _GithubAlertItem call(
      {required String? affectedPackageName, required String? affectedRange}) {
    return _GithubAlertItem(
      affectedPackageName: affectedPackageName,
      affectedRange: affectedRange,
    );
  }
}

/// @nodoc
const $GithubAlertItem = _$GithubAlertItemTearOff();

/// @nodoc
mixin _$GithubAlertItem {
  String? get affectedPackageName => throw _privateConstructorUsedError;
  String? get affectedRange => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubAlertItemCopyWith<GithubAlertItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubAlertItemCopyWith<$Res> {
  factory $GithubAlertItemCopyWith(
          GithubAlertItem value, $Res Function(GithubAlertItem) then) =
      _$GithubAlertItemCopyWithImpl<$Res>;
  $Res call({String? affectedPackageName, String? affectedRange});
}

/// @nodoc
class _$GithubAlertItemCopyWithImpl<$Res>
    implements $GithubAlertItemCopyWith<$Res> {
  _$GithubAlertItemCopyWithImpl(this._value, this._then);

  final GithubAlertItem _value;
  // ignore: unused_field
  final $Res Function(GithubAlertItem) _then;

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
abstract class _$GithubAlertItemCopyWith<$Res>
    implements $GithubAlertItemCopyWith<$Res> {
  factory _$GithubAlertItemCopyWith(
          _GithubAlertItem value, $Res Function(_GithubAlertItem) then) =
      __$GithubAlertItemCopyWithImpl<$Res>;
  @override
  $Res call({String? affectedPackageName, String? affectedRange});
}

/// @nodoc
class __$GithubAlertItemCopyWithImpl<$Res>
    extends _$GithubAlertItemCopyWithImpl<$Res>
    implements _$GithubAlertItemCopyWith<$Res> {
  __$GithubAlertItemCopyWithImpl(
      _GithubAlertItem _value, $Res Function(_GithubAlertItem) _then)
      : super(_value, (v) => _then(v as _GithubAlertItem));

  @override
  _GithubAlertItem get _value => super._value as _GithubAlertItem;

  @override
  $Res call({
    Object? affectedPackageName = freezed,
    Object? affectedRange = freezed,
  }) {
    return _then(_GithubAlertItem(
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

class _$_GithubAlertItem implements _GithubAlertItem {
  const _$_GithubAlertItem(
      {required this.affectedPackageName, required this.affectedRange});

  @override
  final String? affectedPackageName;
  @override
  final String? affectedRange;

  @override
  String toString() {
    return 'GithubAlertItem(affectedPackageName: $affectedPackageName, affectedRange: $affectedRange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubAlertItem &&
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
  _$GithubAlertItemCopyWith<_GithubAlertItem> get copyWith =>
      __$GithubAlertItemCopyWithImpl<_GithubAlertItem>(this, _$identity);
}

abstract class _GithubAlertItem implements GithubAlertItem {
  const factory _GithubAlertItem(
      {required String? affectedPackageName,
      required String? affectedRange}) = _$_GithubAlertItem;

  @override
  String? get affectedPackageName => throw _privateConstructorUsedError;
  @override
  String? get affectedRange => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubAlertItemCopyWith<_GithubAlertItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubProjectItemTearOff {
  const _$GithubProjectItemTearOff();

  _GithubProjectItem call(
      {required String? name,
      required String? state,
      required String? body,
      required String? htmlUrl}) {
    return _GithubProjectItem(
      name: name,
      state: state,
      body: body,
      htmlUrl: htmlUrl,
    );
  }
}

/// @nodoc
const $GithubProjectItem = _$GithubProjectItemTearOff();

/// @nodoc
mixin _$GithubProjectItem {
  String? get name => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubProjectItemCopyWith<GithubProjectItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubProjectItemCopyWith<$Res> {
  factory $GithubProjectItemCopyWith(
          GithubProjectItem value, $Res Function(GithubProjectItem) then) =
      _$GithubProjectItemCopyWithImpl<$Res>;
  $Res call({String? name, String? state, String? body, String? htmlUrl});
}

/// @nodoc
class _$GithubProjectItemCopyWithImpl<$Res>
    implements $GithubProjectItemCopyWith<$Res> {
  _$GithubProjectItemCopyWithImpl(this._value, this._then);

  final GithubProjectItem _value;
  // ignore: unused_field
  final $Res Function(GithubProjectItem) _then;

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
abstract class _$GithubProjectItemCopyWith<$Res>
    implements $GithubProjectItemCopyWith<$Res> {
  factory _$GithubProjectItemCopyWith(
          _GithubProjectItem value, $Res Function(_GithubProjectItem) then) =
      __$GithubProjectItemCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? state, String? body, String? htmlUrl});
}

/// @nodoc
class __$GithubProjectItemCopyWithImpl<$Res>
    extends _$GithubProjectItemCopyWithImpl<$Res>
    implements _$GithubProjectItemCopyWith<$Res> {
  __$GithubProjectItemCopyWithImpl(
      _GithubProjectItem _value, $Res Function(_GithubProjectItem) _then)
      : super(_value, (v) => _then(v as _GithubProjectItem));

  @override
  _GithubProjectItem get _value => super._value as _GithubProjectItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? state = freezed,
    Object? body = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_GithubProjectItem(
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

class _$_GithubProjectItem implements _GithubProjectItem {
  const _$_GithubProjectItem(
      {required this.name,
      required this.state,
      required this.body,
      required this.htmlUrl});

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
    return 'GithubProjectItem(name: $name, state: $state, body: $body, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubProjectItem &&
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
  _$GithubProjectItemCopyWith<_GithubProjectItem> get copyWith =>
      __$GithubProjectItemCopyWithImpl<_GithubProjectItem>(this, _$identity);
}

abstract class _GithubProjectItem implements GithubProjectItem {
  const factory _GithubProjectItem(
      {required String? name,
      required String? state,
      required String? body,
      required String? htmlUrl}) = _$_GithubProjectItem;

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
  _$GithubProjectItemCopyWith<_GithubProjectItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubProjectColumnItemTearOff {
  const _$GithubProjectColumnItemTearOff();

  _GithubProjectColumnItem call(
      {required String? htmlUrl,
      required String? columnsUrl,
      required String? name}) {
    return _GithubProjectColumnItem(
      htmlUrl: htmlUrl,
      columnsUrl: columnsUrl,
      name: name,
    );
  }
}

/// @nodoc
const $GithubProjectColumnItem = _$GithubProjectColumnItemTearOff();

/// @nodoc
mixin _$GithubProjectColumnItem {
  String? get htmlUrl => throw _privateConstructorUsedError;
  String? get columnsUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubProjectColumnItemCopyWith<GithubProjectColumnItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubProjectColumnItemCopyWith<$Res> {
  factory $GithubProjectColumnItemCopyWith(GithubProjectColumnItem value,
          $Res Function(GithubProjectColumnItem) then) =
      _$GithubProjectColumnItemCopyWithImpl<$Res>;
  $Res call({String? htmlUrl, String? columnsUrl, String? name});
}

/// @nodoc
class _$GithubProjectColumnItemCopyWithImpl<$Res>
    implements $GithubProjectColumnItemCopyWith<$Res> {
  _$GithubProjectColumnItemCopyWithImpl(this._value, this._then);

  final GithubProjectColumnItem _value;
  // ignore: unused_field
  final $Res Function(GithubProjectColumnItem) _then;

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
abstract class _$GithubProjectColumnItemCopyWith<$Res>
    implements $GithubProjectColumnItemCopyWith<$Res> {
  factory _$GithubProjectColumnItemCopyWith(_GithubProjectColumnItem value,
          $Res Function(_GithubProjectColumnItem) then) =
      __$GithubProjectColumnItemCopyWithImpl<$Res>;
  @override
  $Res call({String? htmlUrl, String? columnsUrl, String? name});
}

/// @nodoc
class __$GithubProjectColumnItemCopyWithImpl<$Res>
    extends _$GithubProjectColumnItemCopyWithImpl<$Res>
    implements _$GithubProjectColumnItemCopyWith<$Res> {
  __$GithubProjectColumnItemCopyWithImpl(_GithubProjectColumnItem _value,
      $Res Function(_GithubProjectColumnItem) _then)
      : super(_value, (v) => _then(v as _GithubProjectColumnItem));

  @override
  _GithubProjectColumnItem get _value =>
      super._value as _GithubProjectColumnItem;

  @override
  $Res call({
    Object? htmlUrl = freezed,
    Object? columnsUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_GithubProjectColumnItem(
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

class _$_GithubProjectColumnItem implements _GithubProjectColumnItem {
  const _$_GithubProjectColumnItem(
      {required this.htmlUrl, required this.columnsUrl, required this.name});

  @override
  final String? htmlUrl;
  @override
  final String? columnsUrl;
  @override
  final String? name;

  @override
  String toString() {
    return 'GithubProjectColumnItem(htmlUrl: $htmlUrl, columnsUrl: $columnsUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubProjectColumnItem &&
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
  _$GithubProjectColumnItemCopyWith<_GithubProjectColumnItem> get copyWith =>
      __$GithubProjectColumnItemCopyWithImpl<_GithubProjectColumnItem>(
          this, _$identity);
}

abstract class _GithubProjectColumnItem implements GithubProjectColumnItem {
  const factory _GithubProjectColumnItem(
      {required String? htmlUrl,
      required String? columnsUrl,
      required String? name}) = _$_GithubProjectColumnItem;

  @override
  String? get htmlUrl => throw _privateConstructorUsedError;
  @override
  String? get columnsUrl => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubProjectColumnItemCopyWith<_GithubProjectColumnItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubInstallationRepositoriesItemTearOff {
  const _$GithubInstallationRepositoriesItemTearOff();

  _GithubInstallationRepositoriesItem call(
      {required List<GithubNotificationItemRepo>? repositoriesAdded,
      required List<GithubNotificationItemRepo>? repositoriesRemoved,
      required String? repositoriesSelection,
      required int? id}) {
    return _GithubInstallationRepositoriesItem(
      repositoriesAdded: repositoriesAdded,
      repositoriesRemoved: repositoriesRemoved,
      repositoriesSelection: repositoriesSelection,
      id: id,
    );
  }
}

/// @nodoc
const $GithubInstallationRepositoriesItem =
    _$GithubInstallationRepositoriesItemTearOff();

/// @nodoc
mixin _$GithubInstallationRepositoriesItem {
  List<GithubNotificationItemRepo>? get repositoriesAdded =>
      throw _privateConstructorUsedError;
  List<GithubNotificationItemRepo>? get repositoriesRemoved =>
      throw _privateConstructorUsedError;
  String? get repositoriesSelection => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubInstallationRepositoriesItemCopyWith<
          GithubInstallationRepositoriesItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubInstallationRepositoriesItemCopyWith<$Res> {
  factory $GithubInstallationRepositoriesItemCopyWith(
          GithubInstallationRepositoriesItem value,
          $Res Function(GithubInstallationRepositoriesItem) then) =
      _$GithubInstallationRepositoriesItemCopyWithImpl<$Res>;
  $Res call(
      {List<GithubNotificationItemRepo>? repositoriesAdded,
      List<GithubNotificationItemRepo>? repositoriesRemoved,
      String? repositoriesSelection,
      int? id});
}

/// @nodoc
class _$GithubInstallationRepositoriesItemCopyWithImpl<$Res>
    implements $GithubInstallationRepositoriesItemCopyWith<$Res> {
  _$GithubInstallationRepositoriesItemCopyWithImpl(this._value, this._then);

  final GithubInstallationRepositoriesItem _value;
  // ignore: unused_field
  final $Res Function(GithubInstallationRepositoriesItem) _then;

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
              as List<GithubNotificationItemRepo>?,
      repositoriesRemoved: repositoriesRemoved == freezed
          ? _value.repositoriesRemoved
          : repositoriesRemoved // ignore: cast_nullable_to_non_nullable
              as List<GithubNotificationItemRepo>?,
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
abstract class _$GithubInstallationRepositoriesItemCopyWith<$Res>
    implements $GithubInstallationRepositoriesItemCopyWith<$Res> {
  factory _$GithubInstallationRepositoriesItemCopyWith(
          _GithubInstallationRepositoriesItem value,
          $Res Function(_GithubInstallationRepositoriesItem) then) =
      __$GithubInstallationRepositoriesItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GithubNotificationItemRepo>? repositoriesAdded,
      List<GithubNotificationItemRepo>? repositoriesRemoved,
      String? repositoriesSelection,
      int? id});
}

/// @nodoc
class __$GithubInstallationRepositoriesItemCopyWithImpl<$Res>
    extends _$GithubInstallationRepositoriesItemCopyWithImpl<$Res>
    implements _$GithubInstallationRepositoriesItemCopyWith<$Res> {
  __$GithubInstallationRepositoriesItemCopyWithImpl(
      _GithubInstallationRepositoriesItem _value,
      $Res Function(_GithubInstallationRepositoriesItem) _then)
      : super(_value, (v) => _then(v as _GithubInstallationRepositoriesItem));

  @override
  _GithubInstallationRepositoriesItem get _value =>
      super._value as _GithubInstallationRepositoriesItem;

  @override
  $Res call({
    Object? repositoriesAdded = freezed,
    Object? repositoriesRemoved = freezed,
    Object? repositoriesSelection = freezed,
    Object? id = freezed,
  }) {
    return _then(_GithubInstallationRepositoriesItem(
      repositoriesAdded: repositoriesAdded == freezed
          ? _value.repositoriesAdded
          : repositoriesAdded // ignore: cast_nullable_to_non_nullable
              as List<GithubNotificationItemRepo>?,
      repositoriesRemoved: repositoriesRemoved == freezed
          ? _value.repositoriesRemoved
          : repositoriesRemoved // ignore: cast_nullable_to_non_nullable
              as List<GithubNotificationItemRepo>?,
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

class _$_GithubInstallationRepositoriesItem
    implements _GithubInstallationRepositoriesItem {
  const _$_GithubInstallationRepositoriesItem(
      {required this.repositoriesAdded,
      required this.repositoriesRemoved,
      required this.repositoriesSelection,
      required this.id});

  @override
  final List<GithubNotificationItemRepo>? repositoriesAdded;
  @override
  final List<GithubNotificationItemRepo>? repositoriesRemoved;
  @override
  final String? repositoriesSelection;
  @override
  final int? id;

  @override
  String toString() {
    return 'GithubInstallationRepositoriesItem(repositoriesAdded: $repositoriesAdded, repositoriesRemoved: $repositoriesRemoved, repositoriesSelection: $repositoriesSelection, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubInstallationRepositoriesItem &&
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
  _$GithubInstallationRepositoriesItemCopyWith<
          _GithubInstallationRepositoriesItem>
      get copyWith => __$GithubInstallationRepositoriesItemCopyWithImpl<
          _GithubInstallationRepositoriesItem>(this, _$identity);
}

abstract class _GithubInstallationRepositoriesItem
    implements GithubInstallationRepositoriesItem {
  const factory _GithubInstallationRepositoriesItem(
      {required List<GithubNotificationItemRepo>? repositoriesAdded,
      required List<GithubNotificationItemRepo>? repositoriesRemoved,
      required String? repositoriesSelection,
      required int? id}) = _$_GithubInstallationRepositoriesItem;

  @override
  List<GithubNotificationItemRepo>? get repositoriesAdded =>
      throw _privateConstructorUsedError;
  @override
  List<GithubNotificationItemRepo>? get repositoriesRemoved =>
      throw _privateConstructorUsedError;
  @override
  String? get repositoriesSelection => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubInstallationRepositoriesItemCopyWith<
          _GithubInstallationRepositoriesItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubCheckrunItemTearOff {
  const _$GithubCheckrunItemTearOff();

  _GithubCheckrunItem call(
      {required String? status, required String? name, required int? id}) {
    return _GithubCheckrunItem(
      status: status,
      name: name,
      id: id,
    );
  }
}

/// @nodoc
const $GithubCheckrunItem = _$GithubCheckrunItemTearOff();

/// @nodoc
mixin _$GithubCheckrunItem {
  String? get status => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubCheckrunItemCopyWith<GithubCheckrunItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubCheckrunItemCopyWith<$Res> {
  factory $GithubCheckrunItemCopyWith(
          GithubCheckrunItem value, $Res Function(GithubCheckrunItem) then) =
      _$GithubCheckrunItemCopyWithImpl<$Res>;
  $Res call({String? status, String? name, int? id});
}

/// @nodoc
class _$GithubCheckrunItemCopyWithImpl<$Res>
    implements $GithubCheckrunItemCopyWith<$Res> {
  _$GithubCheckrunItemCopyWithImpl(this._value, this._then);

  final GithubCheckrunItem _value;
  // ignore: unused_field
  final $Res Function(GithubCheckrunItem) _then;

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
abstract class _$GithubCheckrunItemCopyWith<$Res>
    implements $GithubCheckrunItemCopyWith<$Res> {
  factory _$GithubCheckrunItemCopyWith(
          _GithubCheckrunItem value, $Res Function(_GithubCheckrunItem) then) =
      __$GithubCheckrunItemCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? name, int? id});
}

/// @nodoc
class __$GithubCheckrunItemCopyWithImpl<$Res>
    extends _$GithubCheckrunItemCopyWithImpl<$Res>
    implements _$GithubCheckrunItemCopyWith<$Res> {
  __$GithubCheckrunItemCopyWithImpl(
      _GithubCheckrunItem _value, $Res Function(_GithubCheckrunItem) _then)
      : super(_value, (v) => _then(v as _GithubCheckrunItem));

  @override
  _GithubCheckrunItem get _value => super._value as _GithubCheckrunItem;

  @override
  $Res call({
    Object? status = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_GithubCheckrunItem(
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

class _$_GithubCheckrunItem implements _GithubCheckrunItem {
  const _$_GithubCheckrunItem(
      {required this.status, required this.name, required this.id});

  @override
  final String? status;
  @override
  final String? name;
  @override
  final int? id;

  @override
  String toString() {
    return 'GithubCheckrunItem(status: $status, name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubCheckrunItem &&
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
  _$GithubCheckrunItemCopyWith<_GithubCheckrunItem> get copyWith =>
      __$GithubCheckrunItemCopyWithImpl<_GithubCheckrunItem>(this, _$identity);
}

abstract class _GithubCheckrunItem implements GithubCheckrunItem {
  const factory _GithubCheckrunItem(
      {required String? status,
      required String? name,
      required int? id}) = _$_GithubCheckrunItem;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubCheckrunItemCopyWith<_GithubCheckrunItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubCheckSuiteItemTearOff {
  const _$GithubCheckSuiteItemTearOff();

  _GithubCheckSuiteItem call(
      {required String? status, required String? conclusion}) {
    return _GithubCheckSuiteItem(
      status: status,
      conclusion: conclusion,
    );
  }
}

/// @nodoc
const $GithubCheckSuiteItem = _$GithubCheckSuiteItemTearOff();

/// @nodoc
mixin _$GithubCheckSuiteItem {
  String? get status => throw _privateConstructorUsedError;
  String? get conclusion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubCheckSuiteItemCopyWith<GithubCheckSuiteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubCheckSuiteItemCopyWith<$Res> {
  factory $GithubCheckSuiteItemCopyWith(GithubCheckSuiteItem value,
          $Res Function(GithubCheckSuiteItem) then) =
      _$GithubCheckSuiteItemCopyWithImpl<$Res>;
  $Res call({String? status, String? conclusion});
}

/// @nodoc
class _$GithubCheckSuiteItemCopyWithImpl<$Res>
    implements $GithubCheckSuiteItemCopyWith<$Res> {
  _$GithubCheckSuiteItemCopyWithImpl(this._value, this._then);

  final GithubCheckSuiteItem _value;
  // ignore: unused_field
  final $Res Function(GithubCheckSuiteItem) _then;

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
abstract class _$GithubCheckSuiteItemCopyWith<$Res>
    implements $GithubCheckSuiteItemCopyWith<$Res> {
  factory _$GithubCheckSuiteItemCopyWith(_GithubCheckSuiteItem value,
          $Res Function(_GithubCheckSuiteItem) then) =
      __$GithubCheckSuiteItemCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? conclusion});
}

/// @nodoc
class __$GithubCheckSuiteItemCopyWithImpl<$Res>
    extends _$GithubCheckSuiteItemCopyWithImpl<$Res>
    implements _$GithubCheckSuiteItemCopyWith<$Res> {
  __$GithubCheckSuiteItemCopyWithImpl(
      _GithubCheckSuiteItem _value, $Res Function(_GithubCheckSuiteItem) _then)
      : super(_value, (v) => _then(v as _GithubCheckSuiteItem));

  @override
  _GithubCheckSuiteItem get _value => super._value as _GithubCheckSuiteItem;

  @override
  $Res call({
    Object? status = freezed,
    Object? conclusion = freezed,
  }) {
    return _then(_GithubCheckSuiteItem(
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

class _$_GithubCheckSuiteItem implements _GithubCheckSuiteItem {
  const _$_GithubCheckSuiteItem(
      {required this.status, required this.conclusion});

  @override
  final String? status;
  @override
  final String? conclusion;

  @override
  String toString() {
    return 'GithubCheckSuiteItem(status: $status, conclusion: $conclusion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubCheckSuiteItem &&
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
  _$GithubCheckSuiteItemCopyWith<_GithubCheckSuiteItem> get copyWith =>
      __$GithubCheckSuiteItemCopyWithImpl<_GithubCheckSuiteItem>(
          this, _$identity);
}

abstract class _GithubCheckSuiteItem implements GithubCheckSuiteItem {
  const factory _GithubCheckSuiteItem(
      {required String? status,
      required String? conclusion}) = _$_GithubCheckSuiteItem;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get conclusion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubCheckSuiteItemCopyWith<_GithubCheckSuiteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubContentReferenceItemTearOff {
  const _$GithubContentReferenceItemTearOff();

  _GithubContentReferenceItem call(
      {required int? id, required String? reference}) {
    return _GithubContentReferenceItem(
      id: id,
      reference: reference,
    );
  }
}

/// @nodoc
const $GithubContentReferenceItem = _$GithubContentReferenceItemTearOff();

/// @nodoc
mixin _$GithubContentReferenceItem {
  int? get id => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubContentReferenceItemCopyWith<GithubContentReferenceItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubContentReferenceItemCopyWith<$Res> {
  factory $GithubContentReferenceItemCopyWith(GithubContentReferenceItem value,
          $Res Function(GithubContentReferenceItem) then) =
      _$GithubContentReferenceItemCopyWithImpl<$Res>;
  $Res call({int? id, String? reference});
}

/// @nodoc
class _$GithubContentReferenceItemCopyWithImpl<$Res>
    implements $GithubContentReferenceItemCopyWith<$Res> {
  _$GithubContentReferenceItemCopyWithImpl(this._value, this._then);

  final GithubContentReferenceItem _value;
  // ignore: unused_field
  final $Res Function(GithubContentReferenceItem) _then;

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
abstract class _$GithubContentReferenceItemCopyWith<$Res>
    implements $GithubContentReferenceItemCopyWith<$Res> {
  factory _$GithubContentReferenceItemCopyWith(
          _GithubContentReferenceItem value,
          $Res Function(_GithubContentReferenceItem) then) =
      __$GithubContentReferenceItemCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? reference});
}

/// @nodoc
class __$GithubContentReferenceItemCopyWithImpl<$Res>
    extends _$GithubContentReferenceItemCopyWithImpl<$Res>
    implements _$GithubContentReferenceItemCopyWith<$Res> {
  __$GithubContentReferenceItemCopyWithImpl(_GithubContentReferenceItem _value,
      $Res Function(_GithubContentReferenceItem) _then)
      : super(_value, (v) => _then(v as _GithubContentReferenceItem));

  @override
  _GithubContentReferenceItem get _value =>
      super._value as _GithubContentReferenceItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? reference = freezed,
  }) {
    return _then(_GithubContentReferenceItem(
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

class _$_GithubContentReferenceItem implements _GithubContentReferenceItem {
  const _$_GithubContentReferenceItem(
      {required this.id, required this.reference});

  @override
  final int? id;
  @override
  final String? reference;

  @override
  String toString() {
    return 'GithubContentReferenceItem(id: $id, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubContentReferenceItem &&
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
  _$GithubContentReferenceItemCopyWith<_GithubContentReferenceItem>
      get copyWith => __$GithubContentReferenceItemCopyWithImpl<
          _GithubContentReferenceItem>(this, _$identity);
}

abstract class _GithubContentReferenceItem
    implements GithubContentReferenceItem {
  const factory _GithubContentReferenceItem(
      {required int? id,
      required String? reference}) = _$_GithubContentReferenceItem;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get reference => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubContentReferenceItemCopyWith<_GithubContentReferenceItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubContributorItemTearOff {
  const _$GithubContributorItemTearOff();

  _GithubContributorItem call(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? htmlUrl,
      required int? contributions}) {
    return _GithubContributorItem(
      id: id,
      login: login,
      avatarUrl: avatarUrl,
      htmlUrl: htmlUrl,
      contributions: contributions,
    );
  }
}

/// @nodoc
const $GithubContributorItem = _$GithubContributorItemTearOff();

/// @nodoc
mixin _$GithubContributorItem {
  int? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;
  int? get contributions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubContributorItemCopyWith<GithubContributorItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubContributorItemCopyWith<$Res> {
  factory $GithubContributorItemCopyWith(GithubContributorItem value,
          $Res Function(GithubContributorItem) then) =
      _$GithubContributorItemCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? login,
      String? avatarUrl,
      String? htmlUrl,
      int? contributions});
}

/// @nodoc
class _$GithubContributorItemCopyWithImpl<$Res>
    implements $GithubContributorItemCopyWith<$Res> {
  _$GithubContributorItemCopyWithImpl(this._value, this._then);

  final GithubContributorItem _value;
  // ignore: unused_field
  final $Res Function(GithubContributorItem) _then;

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
abstract class _$GithubContributorItemCopyWith<$Res>
    implements $GithubContributorItemCopyWith<$Res> {
  factory _$GithubContributorItemCopyWith(_GithubContributorItem value,
          $Res Function(_GithubContributorItem) then) =
      __$GithubContributorItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? login,
      String? avatarUrl,
      String? htmlUrl,
      int? contributions});
}

/// @nodoc
class __$GithubContributorItemCopyWithImpl<$Res>
    extends _$GithubContributorItemCopyWithImpl<$Res>
    implements _$GithubContributorItemCopyWith<$Res> {
  __$GithubContributorItemCopyWithImpl(_GithubContributorItem _value,
      $Res Function(_GithubContributorItem) _then)
      : super(_value, (v) => _then(v as _GithubContributorItem));

  @override
  _GithubContributorItem get _value => super._value as _GithubContributorItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? htmlUrl = freezed,
    Object? contributions = freezed,
  }) {
    return _then(_GithubContributorItem(
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

class _$_GithubContributorItem implements _GithubContributorItem {
  const _$_GithubContributorItem(
      {required this.id,
      required this.login,
      required this.avatarUrl,
      required this.htmlUrl,
      required this.contributions});

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
    return 'GithubContributorItem(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, contributions: $contributions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubContributorItem &&
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
  _$GithubContributorItemCopyWith<_GithubContributorItem> get copyWith =>
      __$GithubContributorItemCopyWithImpl<_GithubContributorItem>(
          this, _$identity);
}

abstract class _GithubContributorItem implements GithubContributorItem {
  const factory _GithubContributorItem(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? htmlUrl,
      required int? contributions}) = _$_GithubContributorItem;

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
  _$GithubContributorItemCopyWith<_GithubContributorItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubUserOrganizationItemTearOff {
  const _$GithubUserOrganizationItemTearOff();

  _GithubUserOrganizationItem call(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? description,
      required String? url}) {
    return _GithubUserOrganizationItem(
      id: id,
      login: login,
      avatarUrl: avatarUrl,
      description: description,
      url: url,
    );
  }
}

/// @nodoc
const $GithubUserOrganizationItem = _$GithubUserOrganizationItemTearOff();

/// @nodoc
mixin _$GithubUserOrganizationItem {
  int? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubUserOrganizationItemCopyWith<GithubUserOrganizationItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubUserOrganizationItemCopyWith<$Res> {
  factory $GithubUserOrganizationItemCopyWith(GithubUserOrganizationItem value,
          $Res Function(GithubUserOrganizationItem) then) =
      _$GithubUserOrganizationItemCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? login,
      String? avatarUrl,
      String? description,
      String? url});
}

/// @nodoc
class _$GithubUserOrganizationItemCopyWithImpl<$Res>
    implements $GithubUserOrganizationItemCopyWith<$Res> {
  _$GithubUserOrganizationItemCopyWithImpl(this._value, this._then);

  final GithubUserOrganizationItem _value;
  // ignore: unused_field
  final $Res Function(GithubUserOrganizationItem) _then;

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
abstract class _$GithubUserOrganizationItemCopyWith<$Res>
    implements $GithubUserOrganizationItemCopyWith<$Res> {
  factory _$GithubUserOrganizationItemCopyWith(
          _GithubUserOrganizationItem value,
          $Res Function(_GithubUserOrganizationItem) then) =
      __$GithubUserOrganizationItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? login,
      String? avatarUrl,
      String? description,
      String? url});
}

/// @nodoc
class __$GithubUserOrganizationItemCopyWithImpl<$Res>
    extends _$GithubUserOrganizationItemCopyWithImpl<$Res>
    implements _$GithubUserOrganizationItemCopyWith<$Res> {
  __$GithubUserOrganizationItemCopyWithImpl(_GithubUserOrganizationItem _value,
      $Res Function(_GithubUserOrganizationItem) _then)
      : super(_value, (v) => _then(v as _GithubUserOrganizationItem));

  @override
  _GithubUserOrganizationItem get _value =>
      super._value as _GithubUserOrganizationItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(_GithubUserOrganizationItem(
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

class _$_GithubUserOrganizationItem implements _GithubUserOrganizationItem {
  const _$_GithubUserOrganizationItem(
      {required this.id,
      required this.login,
      required this.avatarUrl,
      required this.description,
      required this.url});

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
    return 'GithubUserOrganizationItem(id: $id, login: $login, avatarUrl: $avatarUrl, description: $description, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubUserOrganizationItem &&
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
  _$GithubUserOrganizationItemCopyWith<_GithubUserOrganizationItem>
      get copyWith => __$GithubUserOrganizationItemCopyWithImpl<
          _GithubUserOrganizationItem>(this, _$identity);
}

abstract class _GithubUserOrganizationItem
    implements GithubUserOrganizationItem {
  const factory _GithubUserOrganizationItem(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? description,
      required String? url}) = _$_GithubUserOrganizationItem;

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
  _$GithubUserOrganizationItemCopyWith<_GithubUserOrganizationItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GistFilesTearOff {
  const _$GistFilesTearOff();

  _GistFiles call(
      {required String? filename,
      required int? size,
      required String? rawUrl,
      required String? type,
      required String? language,
      required bool? truncated,
      required String? content}) {
    return _GistFiles(
      filename: filename,
      size: size,
      rawUrl: rawUrl,
      type: type,
      language: language,
      truncated: truncated,
      content: content,
    );
  }
}

/// @nodoc
const $GistFiles = _$GistFilesTearOff();

/// @nodoc
mixin _$GistFiles {
  String? get filename => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get rawUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  bool? get truncated => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GistFilesCopyWith<GistFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GistFilesCopyWith<$Res> {
  factory $GistFilesCopyWith(GistFiles value, $Res Function(GistFiles) then) =
      _$GistFilesCopyWithImpl<$Res>;
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
class _$GistFilesCopyWithImpl<$Res> implements $GistFilesCopyWith<$Res> {
  _$GistFilesCopyWithImpl(this._value, this._then);

  final GistFiles _value;
  // ignore: unused_field
  final $Res Function(GistFiles) _then;

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
abstract class _$GistFilesCopyWith<$Res> implements $GistFilesCopyWith<$Res> {
  factory _$GistFilesCopyWith(
          _GistFiles value, $Res Function(_GistFiles) then) =
      __$GistFilesCopyWithImpl<$Res>;
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
class __$GistFilesCopyWithImpl<$Res> extends _$GistFilesCopyWithImpl<$Res>
    implements _$GistFilesCopyWith<$Res> {
  __$GistFilesCopyWithImpl(_GistFiles _value, $Res Function(_GistFiles) _then)
      : super(_value, (v) => _then(v as _GistFiles));

  @override
  _GistFiles get _value => super._value as _GistFiles;

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
    return _then(_GistFiles(
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

class _$_GistFiles implements _GistFiles {
  const _$_GistFiles(
      {required this.filename,
      required this.size,
      required this.rawUrl,
      required this.type,
      required this.language,
      required this.truncated,
      required this.content});

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
    return 'GistFiles(filename: $filename, size: $size, rawUrl: $rawUrl, type: $type, language: $language, truncated: $truncated, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GistFiles &&
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
  _$GistFilesCopyWith<_GistFiles> get copyWith =>
      __$GistFilesCopyWithImpl<_GistFiles>(this, _$identity);
}

abstract class _GistFiles implements GistFiles {
  const factory _GistFiles(
      {required String? filename,
      required int? size,
      required String? rawUrl,
      required String? type,
      required String? language,
      required bool? truncated,
      required String? content}) = _$_GistFiles;

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
  _$GistFilesCopyWith<_GistFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubGistsItemTearOff {
  const _$GithubGistsItemTearOff();

  _GithubGistsItem call(
      {required String? id,
      required String? description,
      required bool? public,
      required GithubEventUser? owner,
      required List<GistFiles> fileNames,
      required DateTime? createdAt,
      required DateTime? updatedAt}) {
    return _GithubGistsItem(
      id: id,
      description: description,
      public: public,
      owner: owner,
      fileNames: fileNames,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $GithubGistsItem = _$GithubGistsItemTearOff();

/// @nodoc
mixin _$GithubGistsItem {
  String? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get public => throw _privateConstructorUsedError;
  GithubEventUser? get owner => throw _privateConstructorUsedError;
  List<GistFiles> get fileNames => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubGistsItemCopyWith<GithubGistsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubGistsItemCopyWith<$Res> {
  factory $GithubGistsItemCopyWith(
          GithubGistsItem value, $Res Function(GithubGistsItem) then) =
      _$GithubGistsItemCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? description,
      bool? public,
      GithubEventUser? owner,
      List<GistFiles> fileNames,
      DateTime? createdAt,
      DateTime? updatedAt});

  $GithubEventUserCopyWith<$Res>? get owner;
}

/// @nodoc
class _$GithubGistsItemCopyWithImpl<$Res>
    implements $GithubGistsItemCopyWith<$Res> {
  _$GithubGistsItemCopyWithImpl(this._value, this._then);

  final GithubGistsItem _value;
  // ignore: unused_field
  final $Res Function(GithubGistsItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? public = freezed,
    Object? owner = freezed,
    Object? fileNames = freezed,
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
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GithubEventUser?,
      fileNames: fileNames == freezed
          ? _value.fileNames
          : fileNames // ignore: cast_nullable_to_non_nullable
              as List<GistFiles>,
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
  $GithubEventUserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $GithubEventUserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$GithubGistsItemCopyWith<$Res>
    implements $GithubGistsItemCopyWith<$Res> {
  factory _$GithubGistsItemCopyWith(
          _GithubGistsItem value, $Res Function(_GithubGistsItem) then) =
      __$GithubGistsItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? description,
      bool? public,
      GithubEventUser? owner,
      List<GistFiles> fileNames,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $GithubEventUserCopyWith<$Res>? get owner;
}

/// @nodoc
class __$GithubGistsItemCopyWithImpl<$Res>
    extends _$GithubGistsItemCopyWithImpl<$Res>
    implements _$GithubGistsItemCopyWith<$Res> {
  __$GithubGistsItemCopyWithImpl(
      _GithubGistsItem _value, $Res Function(_GithubGistsItem) _then)
      : super(_value, (v) => _then(v as _GithubGistsItem));

  @override
  _GithubGistsItem get _value => super._value as _GithubGistsItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? public = freezed,
    Object? owner = freezed,
    Object? fileNames = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_GithubGistsItem(
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
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GithubEventUser?,
      fileNames: fileNames == freezed
          ? _value.fileNames
          : fileNames // ignore: cast_nullable_to_non_nullable
              as List<GistFiles>,
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

class _$_GithubGistsItem implements _GithubGistsItem {
  const _$_GithubGistsItem(
      {required this.id,
      required this.description,
      required this.public,
      required this.owner,
      required this.fileNames,
      required this.createdAt,
      required this.updatedAt});

  @override
  final String? id;
  @override
  final String? description;
  @override
  final bool? public;
  @override
  final GithubEventUser? owner;
  @override
  final List<GistFiles> fileNames;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'GithubGistsItem(id: $id, description: $description, public: $public, owner: $owner, fileNames: $fileNames, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubGistsItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.public, public) ||
                const DeepCollectionEquality().equals(other.public, public)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.fileNames, fileNames) ||
                const DeepCollectionEquality()
                    .equals(other.fileNames, fileNames)) &&
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
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(fileNames) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$GithubGistsItemCopyWith<_GithubGistsItem> get copyWith =>
      __$GithubGistsItemCopyWithImpl<_GithubGistsItem>(this, _$identity);
}

abstract class _GithubGistsItem implements GithubGistsItem {
  const factory _GithubGistsItem(
      {required String? id,
      required String? description,
      required bool? public,
      required GithubEventUser? owner,
      required List<GistFiles> fileNames,
      required DateTime? createdAt,
      required DateTime? updatedAt}) = _$_GithubGistsItem;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  bool? get public => throw _privateConstructorUsedError;
  @override
  GithubEventUser? get owner => throw _privateConstructorUsedError;
  @override
  List<GistFiles> get fileNames => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubGistsItemCopyWith<_GithubGistsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubFilesItemTearOff {
  const _$GithubFilesItemTearOff();

  _GithubFilesItem call(
      {required String? filename,
      required String? status,
      required int? additions,
      required int? deletions,
      required int? changes,
      required String? patch}) {
    return _GithubFilesItem(
      filename: filename,
      status: status,
      additions: additions,
      deletions: deletions,
      changes: changes,
      patch: patch,
    );
  }
}

/// @nodoc
const $GithubFilesItem = _$GithubFilesItemTearOff();

/// @nodoc
mixin _$GithubFilesItem {
  String? get filename => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get additions => throw _privateConstructorUsedError;
  int? get deletions => throw _privateConstructorUsedError;
  int? get changes => throw _privateConstructorUsedError;
  String? get patch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubFilesItemCopyWith<GithubFilesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubFilesItemCopyWith<$Res> {
  factory $GithubFilesItemCopyWith(
          GithubFilesItem value, $Res Function(GithubFilesItem) then) =
      _$GithubFilesItemCopyWithImpl<$Res>;
  $Res call(
      {String? filename,
      String? status,
      int? additions,
      int? deletions,
      int? changes,
      String? patch});
}

/// @nodoc
class _$GithubFilesItemCopyWithImpl<$Res>
    implements $GithubFilesItemCopyWith<$Res> {
  _$GithubFilesItemCopyWithImpl(this._value, this._then);

  final GithubFilesItem _value;
  // ignore: unused_field
  final $Res Function(GithubFilesItem) _then;

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
abstract class _$GithubFilesItemCopyWith<$Res>
    implements $GithubFilesItemCopyWith<$Res> {
  factory _$GithubFilesItemCopyWith(
          _GithubFilesItem value, $Res Function(_GithubFilesItem) then) =
      __$GithubFilesItemCopyWithImpl<$Res>;
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
class __$GithubFilesItemCopyWithImpl<$Res>
    extends _$GithubFilesItemCopyWithImpl<$Res>
    implements _$GithubFilesItemCopyWith<$Res> {
  __$GithubFilesItemCopyWithImpl(
      _GithubFilesItem _value, $Res Function(_GithubFilesItem) _then)
      : super(_value, (v) => _then(v as _GithubFilesItem));

  @override
  _GithubFilesItem get _value => super._value as _GithubFilesItem;

  @override
  $Res call({
    Object? filename = freezed,
    Object? status = freezed,
    Object? additions = freezed,
    Object? deletions = freezed,
    Object? changes = freezed,
    Object? patch = freezed,
  }) {
    return _then(_GithubFilesItem(
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

class _$_GithubFilesItem implements _GithubFilesItem {
  const _$_GithubFilesItem(
      {required this.filename,
      required this.status,
      required this.additions,
      required this.deletions,
      required this.changes,
      required this.patch});

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
    return 'GithubFilesItem(filename: $filename, status: $status, additions: $additions, deletions: $deletions, changes: $changes, patch: $patch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubFilesItem &&
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
  _$GithubFilesItemCopyWith<_GithubFilesItem> get copyWith =>
      __$GithubFilesItemCopyWithImpl<_GithubFilesItem>(this, _$identity);
}

abstract class _GithubFilesItem implements GithubFilesItem {
  const factory _GithubFilesItem(
      {required String? filename,
      required String? status,
      required int? additions,
      required int? deletions,
      required int? changes,
      required String? patch}) = _$_GithubFilesItem;

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
  _$GithubFilesItemCopyWith<_GithubFilesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GithubComparisonItemTearOff {
  const _$GithubComparisonItemTearOff();

  _GithubComparisonItem call(
      {required List<GithubFilesItem>? files,
      required String? status,
      required int? aheadBy,
      required int? behindBy}) {
    return _GithubComparisonItem(
      files: files,
      status: status,
      aheadBy: aheadBy,
      behindBy: behindBy,
    );
  }
}

/// @nodoc
const $GithubComparisonItem = _$GithubComparisonItemTearOff();

/// @nodoc
mixin _$GithubComparisonItem {
  List<GithubFilesItem>? get files => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get aheadBy => throw _privateConstructorUsedError;
  int? get behindBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubComparisonItemCopyWith<GithubComparisonItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubComparisonItemCopyWith<$Res> {
  factory $GithubComparisonItemCopyWith(GithubComparisonItem value,
          $Res Function(GithubComparisonItem) then) =
      _$GithubComparisonItemCopyWithImpl<$Res>;
  $Res call(
      {List<GithubFilesItem>? files,
      String? status,
      int? aheadBy,
      int? behindBy});
}

/// @nodoc
class _$GithubComparisonItemCopyWithImpl<$Res>
    implements $GithubComparisonItemCopyWith<$Res> {
  _$GithubComparisonItemCopyWithImpl(this._value, this._then);

  final GithubComparisonItem _value;
  // ignore: unused_field
  final $Res Function(GithubComparisonItem) _then;

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
              as List<GithubFilesItem>?,
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
abstract class _$GithubComparisonItemCopyWith<$Res>
    implements $GithubComparisonItemCopyWith<$Res> {
  factory _$GithubComparisonItemCopyWith(_GithubComparisonItem value,
          $Res Function(_GithubComparisonItem) then) =
      __$GithubComparisonItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GithubFilesItem>? files,
      String? status,
      int? aheadBy,
      int? behindBy});
}

/// @nodoc
class __$GithubComparisonItemCopyWithImpl<$Res>
    extends _$GithubComparisonItemCopyWithImpl<$Res>
    implements _$GithubComparisonItemCopyWith<$Res> {
  __$GithubComparisonItemCopyWithImpl(
      _GithubComparisonItem _value, $Res Function(_GithubComparisonItem) _then)
      : super(_value, (v) => _then(v as _GithubComparisonItem));

  @override
  _GithubComparisonItem get _value => super._value as _GithubComparisonItem;

  @override
  $Res call({
    Object? files = freezed,
    Object? status = freezed,
    Object? aheadBy = freezed,
    Object? behindBy = freezed,
  }) {
    return _then(_GithubComparisonItem(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<GithubFilesItem>?,
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

class _$_GithubComparisonItem implements _GithubComparisonItem {
  const _$_GithubComparisonItem(
      {required this.files,
      required this.status,
      required this.aheadBy,
      required this.behindBy});

  @override
  final List<GithubFilesItem>? files;
  @override
  final String? status;
  @override
  final int? aheadBy;
  @override
  final int? behindBy;

  @override
  String toString() {
    return 'GithubComparisonItem(files: $files, status: $status, aheadBy: $aheadBy, behindBy: $behindBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubComparisonItem &&
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
  _$GithubComparisonItemCopyWith<_GithubComparisonItem> get copyWith =>
      __$GithubComparisonItemCopyWithImpl<_GithubComparisonItem>(
          this, _$identity);
}

abstract class _GithubComparisonItem implements GithubComparisonItem {
  const factory _GithubComparisonItem(
      {required List<GithubFilesItem>? files,
      required String? status,
      required int? aheadBy,
      required int? behindBy}) = _$_GithubComparisonItem;

  @override
  List<GithubFilesItem>? get files => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  int? get aheadBy => throw _privateConstructorUsedError;
  @override
  int? get behindBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubComparisonItemCopyWith<_GithubComparisonItem> get copyWith =>
      throw _privateConstructorUsedError;
}
