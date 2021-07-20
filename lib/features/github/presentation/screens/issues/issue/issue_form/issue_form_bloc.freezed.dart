// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'issue_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IssueFormStateTearOff {
  const _$IssueFormStateTearOff();

  InitState init() {
    return const InitState();
  }

  StateChanged stateChanged(String state) {
    return StateChanged(
      state,
    );
  }
}

/// @nodoc
const $IssueFormState = _$IssueFormStateTearOff();

/// @nodoc
mixin _$IssueFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String state) stateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String state)? stateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(StateChanged value) stateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(StateChanged value)? stateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueFormStateCopyWith<$Res> {
  factory $IssueFormStateCopyWith(
          IssueFormState value, $Res Function(IssueFormState) then) =
      _$IssueFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IssueFormStateCopyWithImpl<$Res>
    implements $IssueFormStateCopyWith<$Res> {
  _$IssueFormStateCopyWithImpl(this._value, this._then);

  final IssueFormState _value;
  // ignore: unused_field
  final $Res Function(IssueFormState) _then;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> extends _$IssueFormStateCopyWithImpl<$Res>
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
    return 'IssueFormState.init()';
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
    required TResult Function(String state) stateChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String state)? stateChanged,
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
    required TResult Function(StateChanged value) stateChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(StateChanged value)? stateChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements IssueFormState {
  const factory InitState() = _$InitState;
}

/// @nodoc
abstract class $StateChangedCopyWith<$Res> {
  factory $StateChangedCopyWith(
          StateChanged value, $Res Function(StateChanged) then) =
      _$StateChangedCopyWithImpl<$Res>;
  $Res call({String state});
}

/// @nodoc
class _$StateChangedCopyWithImpl<$Res>
    extends _$IssueFormStateCopyWithImpl<$Res>
    implements $StateChangedCopyWith<$Res> {
  _$StateChangedCopyWithImpl(
      StateChanged _value, $Res Function(StateChanged) _then)
      : super(_value, (v) => _then(v as StateChanged));

  @override
  StateChanged get _value => super._value as StateChanged;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(StateChanged(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateChanged implements StateChanged {
  const _$StateChanged(this.state);

  @override
  final String state;

  @override
  String toString() {
    return 'IssueFormState.stateChanged(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateChanged &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(state);

  @JsonKey(ignore: true)
  @override
  $StateChangedCopyWith<StateChanged> get copyWith =>
      _$StateChangedCopyWithImpl<StateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String state) stateChanged,
  }) {
    return stateChanged(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String state)? stateChanged,
    required TResult orElse(),
  }) {
    if (stateChanged != null) {
      return stateChanged(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(StateChanged value) stateChanged,
  }) {
    return stateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(StateChanged value)? stateChanged,
    required TResult orElse(),
  }) {
    if (stateChanged != null) {
      return stateChanged(this);
    }
    return orElse();
  }
}

abstract class StateChanged implements IssueFormState {
  const factory StateChanged(String state) = _$StateChanged;

  String get state => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateChangedCopyWith<StateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
