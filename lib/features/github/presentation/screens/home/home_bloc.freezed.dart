// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  GetCurrentAccount getCurrentAccount() {
    return const GetCurrentAccount();
  }

  SetActiveTabIndex setActiveTabIndex(int index) {
    return SetActiveTabIndex(
      index,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentAccount,
    required TResult Function(int index) setActiveTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentAccount,
    TResult Function(int index)? setActiveTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentAccount value) getCurrentAccount,
    required TResult Function(SetActiveTabIndex value) setActiveTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentAccount value)? getCurrentAccount,
    TResult Function(SetActiveTabIndex value)? setActiveTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $GetCurrentAccountCopyWith<$Res> {
  factory $GetCurrentAccountCopyWith(
          GetCurrentAccount value, $Res Function(GetCurrentAccount) then) =
      _$GetCurrentAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentAccountCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $GetCurrentAccountCopyWith<$Res> {
  _$GetCurrentAccountCopyWithImpl(
      GetCurrentAccount _value, $Res Function(GetCurrentAccount) _then)
      : super(_value, (v) => _then(v as GetCurrentAccount));

  @override
  GetCurrentAccount get _value => super._value as GetCurrentAccount;
}

/// @nodoc

class _$GetCurrentAccount implements GetCurrentAccount {
  const _$GetCurrentAccount();

  @override
  String toString() {
    return 'HomeEvent.getCurrentAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCurrentAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentAccount,
    required TResult Function(int index) setActiveTabIndex,
  }) {
    return getCurrentAccount();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentAccount,
    TResult Function(int index)? setActiveTabIndex,
    required TResult orElse(),
  }) {
    if (getCurrentAccount != null) {
      return getCurrentAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentAccount value) getCurrentAccount,
    required TResult Function(SetActiveTabIndex value) setActiveTabIndex,
  }) {
    return getCurrentAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentAccount value)? getCurrentAccount,
    TResult Function(SetActiveTabIndex value)? setActiveTabIndex,
    required TResult orElse(),
  }) {
    if (getCurrentAccount != null) {
      return getCurrentAccount(this);
    }
    return orElse();
  }
}

abstract class GetCurrentAccount implements HomeEvent {
  const factory GetCurrentAccount() = _$GetCurrentAccount;
}

/// @nodoc
abstract class $SetActiveTabIndexCopyWith<$Res> {
  factory $SetActiveTabIndexCopyWith(
          SetActiveTabIndex value, $Res Function(SetActiveTabIndex) then) =
      _$SetActiveTabIndexCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$SetActiveTabIndexCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $SetActiveTabIndexCopyWith<$Res> {
  _$SetActiveTabIndexCopyWithImpl(
      SetActiveTabIndex _value, $Res Function(SetActiveTabIndex) _then)
      : super(_value, (v) => _then(v as SetActiveTabIndex));

  @override
  SetActiveTabIndex get _value => super._value as SetActiveTabIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(SetActiveTabIndex(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetActiveTabIndex implements SetActiveTabIndex {
  const _$SetActiveTabIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.setActiveTabIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetActiveTabIndex &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $SetActiveTabIndexCopyWith<SetActiveTabIndex> get copyWith =>
      _$SetActiveTabIndexCopyWithImpl<SetActiveTabIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentAccount,
    required TResult Function(int index) setActiveTabIndex,
  }) {
    return setActiveTabIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentAccount,
    TResult Function(int index)? setActiveTabIndex,
    required TResult orElse(),
  }) {
    if (setActiveTabIndex != null) {
      return setActiveTabIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentAccount value) getCurrentAccount,
    required TResult Function(SetActiveTabIndex value) setActiveTabIndex,
  }) {
    return setActiveTabIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentAccount value)? getCurrentAccount,
    TResult Function(SetActiveTabIndex value)? setActiveTabIndex,
    required TResult orElse(),
  }) {
    if (setActiveTabIndex != null) {
      return setActiveTabIndex(this);
    }
    return orElse();
  }
}

abstract class SetActiveTabIndex implements HomeEvent {
  const factory SetActiveTabIndex(int index) = _$SetActiveTabIndex;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetActiveTabIndexCopyWith<SetActiveTabIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  InitState init() {
    return const InitState();
  }

  onActiveTabIndexChanged activeTabIndexChanged() {
    return const onActiveTabIndexChanged();
  }

  OnLoadCurrentAccount onLoadCurrentAccount(
      Account? account, int activeTabIndex) {
    return OnLoadCurrentAccount(
      account,
      activeTabIndex,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() activeTabIndexChanged,
    required TResult Function(Account? account, int activeTabIndex)
        onLoadCurrentAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? activeTabIndexChanged,
    TResult Function(Account? account, int activeTabIndex)?
        onLoadCurrentAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(onActiveTabIndexChanged value)
        activeTabIndexChanged,
    required TResult Function(OnLoadCurrentAccount value) onLoadCurrentAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(onActiveTabIndexChanged value)? activeTabIndexChanged,
    TResult Function(OnLoadCurrentAccount value)? onLoadCurrentAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.init()';
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
    required TResult Function() activeTabIndexChanged,
    required TResult Function(Account? account, int activeTabIndex)
        onLoadCurrentAccount,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? activeTabIndexChanged,
    TResult Function(Account? account, int activeTabIndex)?
        onLoadCurrentAccount,
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
    required TResult Function(onActiveTabIndexChanged value)
        activeTabIndexChanged,
    required TResult Function(OnLoadCurrentAccount value) onLoadCurrentAccount,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(onActiveTabIndexChanged value)? activeTabIndexChanged,
    TResult Function(OnLoadCurrentAccount value)? onLoadCurrentAccount,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements HomeState {
  const factory InitState() = _$InitState;
}

/// @nodoc
abstract class $onActiveTabIndexChangedCopyWith<$Res> {
  factory $onActiveTabIndexChangedCopyWith(onActiveTabIndexChanged value,
          $Res Function(onActiveTabIndexChanged) then) =
      _$onActiveTabIndexChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$onActiveTabIndexChangedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $onActiveTabIndexChangedCopyWith<$Res> {
  _$onActiveTabIndexChangedCopyWithImpl(onActiveTabIndexChanged _value,
      $Res Function(onActiveTabIndexChanged) _then)
      : super(_value, (v) => _then(v as onActiveTabIndexChanged));

  @override
  onActiveTabIndexChanged get _value => super._value as onActiveTabIndexChanged;
}

/// @nodoc

class _$onActiveTabIndexChanged implements onActiveTabIndexChanged {
  const _$onActiveTabIndexChanged();

  @override
  String toString() {
    return 'HomeState.activeTabIndexChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is onActiveTabIndexChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() activeTabIndexChanged,
    required TResult Function(Account? account, int activeTabIndex)
        onLoadCurrentAccount,
  }) {
    return activeTabIndexChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? activeTabIndexChanged,
    TResult Function(Account? account, int activeTabIndex)?
        onLoadCurrentAccount,
    required TResult orElse(),
  }) {
    if (activeTabIndexChanged != null) {
      return activeTabIndexChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(onActiveTabIndexChanged value)
        activeTabIndexChanged,
    required TResult Function(OnLoadCurrentAccount value) onLoadCurrentAccount,
  }) {
    return activeTabIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(onActiveTabIndexChanged value)? activeTabIndexChanged,
    TResult Function(OnLoadCurrentAccount value)? onLoadCurrentAccount,
    required TResult orElse(),
  }) {
    if (activeTabIndexChanged != null) {
      return activeTabIndexChanged(this);
    }
    return orElse();
  }
}

abstract class onActiveTabIndexChanged implements HomeState {
  const factory onActiveTabIndexChanged() = _$onActiveTabIndexChanged;
}

/// @nodoc
abstract class $OnLoadCurrentAccountCopyWith<$Res> {
  factory $OnLoadCurrentAccountCopyWith(OnLoadCurrentAccount value,
          $Res Function(OnLoadCurrentAccount) then) =
      _$OnLoadCurrentAccountCopyWithImpl<$Res>;
  $Res call({Account? account, int activeTabIndex});

  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class _$OnLoadCurrentAccountCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $OnLoadCurrentAccountCopyWith<$Res> {
  _$OnLoadCurrentAccountCopyWithImpl(
      OnLoadCurrentAccount _value, $Res Function(OnLoadCurrentAccount) _then)
      : super(_value, (v) => _then(v as OnLoadCurrentAccount));

  @override
  OnLoadCurrentAccount get _value => super._value as OnLoadCurrentAccount;

  @override
  $Res call({
    Object? account = freezed,
    Object? activeTabIndex = freezed,
  }) {
    return _then(OnLoadCurrentAccount(
      account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      activeTabIndex == freezed
          ? _value.activeTabIndex
          : activeTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $AccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$OnLoadCurrentAccount implements OnLoadCurrentAccount {
  const _$OnLoadCurrentAccount(this.account, this.activeTabIndex);

  @override
  final Account? account;
  @override
  final int activeTabIndex;

  @override
  String toString() {
    return 'HomeState.onLoadCurrentAccount(account: $account, activeTabIndex: $activeTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnLoadCurrentAccount &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.activeTabIndex, activeTabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.activeTabIndex, activeTabIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(activeTabIndex);

  @JsonKey(ignore: true)
  @override
  $OnLoadCurrentAccountCopyWith<OnLoadCurrentAccount> get copyWith =>
      _$OnLoadCurrentAccountCopyWithImpl<OnLoadCurrentAccount>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() activeTabIndexChanged,
    required TResult Function(Account? account, int activeTabIndex)
        onLoadCurrentAccount,
  }) {
    return onLoadCurrentAccount(account, activeTabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? activeTabIndexChanged,
    TResult Function(Account? account, int activeTabIndex)?
        onLoadCurrentAccount,
    required TResult orElse(),
  }) {
    if (onLoadCurrentAccount != null) {
      return onLoadCurrentAccount(account, activeTabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(onActiveTabIndexChanged value)
        activeTabIndexChanged,
    required TResult Function(OnLoadCurrentAccount value) onLoadCurrentAccount,
  }) {
    return onLoadCurrentAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(onActiveTabIndexChanged value)? activeTabIndexChanged,
    TResult Function(OnLoadCurrentAccount value)? onLoadCurrentAccount,
    required TResult orElse(),
  }) {
    if (onLoadCurrentAccount != null) {
      return onLoadCurrentAccount(this);
    }
    return orElse();
  }
}

abstract class OnLoadCurrentAccount implements HomeState {
  const factory OnLoadCurrentAccount(Account? account, int activeTabIndex) =
      _$OnLoadCurrentAccount;

  Account? get account => throw _privateConstructorUsedError;
  int get activeTabIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnLoadCurrentAccountCopyWith<OnLoadCurrentAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
