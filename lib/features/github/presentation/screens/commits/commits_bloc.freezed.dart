// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'commits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommitsEventTearOff {
  const _$CommitsEventTearOff();

  GetEvents getEvents(int page, int pageSize) {
    return GetEvents(
      page,
      pageSize,
    );
  }
}

/// @nodoc
const $CommitsEvent = _$CommitsEventTearOff();

/// @nodoc
mixin _$CommitsEvent {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) getEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getEvents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEvents value) getEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEvents value)? getEvents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommitsEventCopyWith<CommitsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitsEventCopyWith<$Res> {
  factory $CommitsEventCopyWith(
          CommitsEvent value, $Res Function(CommitsEvent) then) =
      _$CommitsEventCopyWithImpl<$Res>;
  $Res call({int page, int pageSize});
}

/// @nodoc
class _$CommitsEventCopyWithImpl<$Res> implements $CommitsEventCopyWith<$Res> {
  _$CommitsEventCopyWithImpl(this._value, this._then);

  final CommitsEvent _value;
  // ignore: unused_field
  final $Res Function(CommitsEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $GetEventsCopyWith<$Res> implements $CommitsEventCopyWith<$Res> {
  factory $GetEventsCopyWith(GetEvents value, $Res Function(GetEvents) then) =
      _$GetEventsCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize});
}

/// @nodoc
class _$GetEventsCopyWithImpl<$Res> extends _$CommitsEventCopyWithImpl<$Res>
    implements $GetEventsCopyWith<$Res> {
  _$GetEventsCopyWithImpl(GetEvents _value, $Res Function(GetEvents) _then)
      : super(_value, (v) => _then(v as GetEvents));

  @override
  GetEvents get _value => super._value as GetEvents;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(GetEvents(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetEvents implements GetEvents {
  const _$GetEvents(this.page, this.pageSize);

  @override
  final int page;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'CommitsEvent.getEvents(page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetEvents &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize);

  @JsonKey(ignore: true)
  @override
  $GetEventsCopyWith<GetEvents> get copyWith =>
      _$GetEventsCopyWithImpl<GetEvents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) getEvents,
  }) {
    return getEvents(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? getEvents,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEvents value) getEvents,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEvents value)? getEvents,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class GetEvents implements CommitsEvent {
  const factory GetEvents(int page, int pageSize) = _$GetEvents;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get pageSize => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetEventsCopyWith<GetEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommitsStateTearOff {
  const _$CommitsStateTearOff();

  InitState init() {
    return const InitState();
  }
}

/// @nodoc
const $CommitsState = _$CommitsStateTearOff();

/// @nodoc
mixin _$CommitsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitsStateCopyWith<$Res> {
  factory $CommitsStateCopyWith(
          CommitsState value, $Res Function(CommitsState) then) =
      _$CommitsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommitsStateCopyWithImpl<$Res> implements $CommitsStateCopyWith<$Res> {
  _$CommitsStateCopyWithImpl(this._value, this._then);

  final CommitsState _value;
  // ignore: unused_field
  final $Res Function(CommitsState) _then;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> extends _$CommitsStateCopyWithImpl<$Res>
    implements $InitStateCopyWith<$Res> {
  _$InitStateCopyWithImpl(InitState _value, $Res Function(InitState) _then)
      : super(_value, (v) => _then(v as InitState));

  @override
  InitState get _value => super._value as InitState;
}

/// @nodoc

class _$InitState implements InitState {
  const _$InitState();

  @override
  String toString() {
    return 'CommitsState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements CommitsState {
  const factory InitState() = _$InitState;
}
