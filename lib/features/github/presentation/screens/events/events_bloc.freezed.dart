// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventsStateTearOff {
  const _$EventsStateTearOff();

  InitState init() {
    return const InitState();
  }
}

/// @nodoc
const $EventsState = _$EventsStateTearOff();

/// @nodoc
mixin _$EventsState {
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
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res> implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  final EventsState _value;
  // ignore: unused_field
  final $Res Function(EventsState) _then;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> extends _$EventsStateCopyWithImpl<$Res>
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
    return 'EventsState.init()';
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

abstract class InitState implements EventsState {
  const factory InitState() = _$InitState;
}