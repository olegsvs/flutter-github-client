// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  GetAccounts getAccounts() {
    return const GetAccounts();
  }

  OpenGithubOAuth openGithubOAuth() {
    return const OpenGithubOAuth();
  }

  SetActiveAccountAndReload setActiveAccountAndReload(dynamic index) {
    return SetActiveAccountAndReload(
      index,
    );
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccounts,
    required TResult Function() openGithubOAuth,
    required TResult Function(dynamic index) setActiveAccountAndReload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccounts,
    TResult Function()? openGithubOAuth,
    TResult Function(dynamic index)? setActiveAccountAndReload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAccounts value) getAccounts,
    required TResult Function(OpenGithubOAuth value) openGithubOAuth,
    required TResult Function(SetActiveAccountAndReload value)
        setActiveAccountAndReload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAccounts value)? getAccounts,
    TResult Function(OpenGithubOAuth value)? openGithubOAuth,
    TResult Function(SetActiveAccountAndReload value)?
        setActiveAccountAndReload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $GetAccountsCopyWith<$Res> {
  factory $GetAccountsCopyWith(
          GetAccounts value, $Res Function(GetAccounts) then) =
      _$GetAccountsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAccountsCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $GetAccountsCopyWith<$Res> {
  _$GetAccountsCopyWithImpl(
      GetAccounts _value, $Res Function(GetAccounts) _then)
      : super(_value, (v) => _then(v as GetAccounts));

  @override
  GetAccounts get _value => super._value as GetAccounts;
}

/// @nodoc

class _$GetAccounts implements GetAccounts {
  const _$GetAccounts();

  @override
  String toString() {
    return 'LoginEvent.getAccounts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAccounts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccounts,
    required TResult Function() openGithubOAuth,
    required TResult Function(dynamic index) setActiveAccountAndReload,
  }) {
    return getAccounts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccounts,
    TResult Function()? openGithubOAuth,
    TResult Function(dynamic index)? setActiveAccountAndReload,
    required TResult orElse(),
  }) {
    if (getAccounts != null) {
      return getAccounts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAccounts value) getAccounts,
    required TResult Function(OpenGithubOAuth value) openGithubOAuth,
    required TResult Function(SetActiveAccountAndReload value)
        setActiveAccountAndReload,
  }) {
    return getAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAccounts value)? getAccounts,
    TResult Function(OpenGithubOAuth value)? openGithubOAuth,
    TResult Function(SetActiveAccountAndReload value)?
        setActiveAccountAndReload,
    required TResult orElse(),
  }) {
    if (getAccounts != null) {
      return getAccounts(this);
    }
    return orElse();
  }
}

abstract class GetAccounts implements LoginEvent {
  const factory GetAccounts() = _$GetAccounts;
}

/// @nodoc
abstract class $OpenGithubOAuthCopyWith<$Res> {
  factory $OpenGithubOAuthCopyWith(
          OpenGithubOAuth value, $Res Function(OpenGithubOAuth) then) =
      _$OpenGithubOAuthCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenGithubOAuthCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $OpenGithubOAuthCopyWith<$Res> {
  _$OpenGithubOAuthCopyWithImpl(
      OpenGithubOAuth _value, $Res Function(OpenGithubOAuth) _then)
      : super(_value, (v) => _then(v as OpenGithubOAuth));

  @override
  OpenGithubOAuth get _value => super._value as OpenGithubOAuth;
}

/// @nodoc

class _$OpenGithubOAuth implements OpenGithubOAuth {
  const _$OpenGithubOAuth();

  @override
  String toString() {
    return 'LoginEvent.openGithubOAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenGithubOAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccounts,
    required TResult Function() openGithubOAuth,
    required TResult Function(dynamic index) setActiveAccountAndReload,
  }) {
    return openGithubOAuth();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccounts,
    TResult Function()? openGithubOAuth,
    TResult Function(dynamic index)? setActiveAccountAndReload,
    required TResult orElse(),
  }) {
    if (openGithubOAuth != null) {
      return openGithubOAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAccounts value) getAccounts,
    required TResult Function(OpenGithubOAuth value) openGithubOAuth,
    required TResult Function(SetActiveAccountAndReload value)
        setActiveAccountAndReload,
  }) {
    return openGithubOAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAccounts value)? getAccounts,
    TResult Function(OpenGithubOAuth value)? openGithubOAuth,
    TResult Function(SetActiveAccountAndReload value)?
        setActiveAccountAndReload,
    required TResult orElse(),
  }) {
    if (openGithubOAuth != null) {
      return openGithubOAuth(this);
    }
    return orElse();
  }
}

abstract class OpenGithubOAuth implements LoginEvent {
  const factory OpenGithubOAuth() = _$OpenGithubOAuth;
}

/// @nodoc
abstract class $SetActiveAccountAndReloadCopyWith<$Res> {
  factory $SetActiveAccountAndReloadCopyWith(SetActiveAccountAndReload value,
          $Res Function(SetActiveAccountAndReload) then) =
      _$SetActiveAccountAndReloadCopyWithImpl<$Res>;
  $Res call({dynamic index});
}

/// @nodoc
class _$SetActiveAccountAndReloadCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $SetActiveAccountAndReloadCopyWith<$Res> {
  _$SetActiveAccountAndReloadCopyWithImpl(SetActiveAccountAndReload _value,
      $Res Function(SetActiveAccountAndReload) _then)
      : super(_value, (v) => _then(v as SetActiveAccountAndReload));

  @override
  SetActiveAccountAndReload get _value =>
      super._value as SetActiveAccountAndReload;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(SetActiveAccountAndReload(
      index == freezed ? _value.index : index,
    ));
  }
}

/// @nodoc

class _$SetActiveAccountAndReload implements SetActiveAccountAndReload {
  const _$SetActiveAccountAndReload(this.index);

  @override
  final dynamic index;

  @override
  String toString() {
    return 'LoginEvent.setActiveAccountAndReload(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetActiveAccountAndReload &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $SetActiveAccountAndReloadCopyWith<SetActiveAccountAndReload> get copyWith =>
      _$SetActiveAccountAndReloadCopyWithImpl<SetActiveAccountAndReload>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAccounts,
    required TResult Function() openGithubOAuth,
    required TResult Function(dynamic index) setActiveAccountAndReload,
  }) {
    return setActiveAccountAndReload(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAccounts,
    TResult Function()? openGithubOAuth,
    TResult Function(dynamic index)? setActiveAccountAndReload,
    required TResult orElse(),
  }) {
    if (setActiveAccountAndReload != null) {
      return setActiveAccountAndReload(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAccounts value) getAccounts,
    required TResult Function(OpenGithubOAuth value) openGithubOAuth,
    required TResult Function(SetActiveAccountAndReload value)
        setActiveAccountAndReload,
  }) {
    return setActiveAccountAndReload(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAccounts value)? getAccounts,
    TResult Function(OpenGithubOAuth value)? openGithubOAuth,
    TResult Function(SetActiveAccountAndReload value)?
        setActiveAccountAndReload,
    required TResult orElse(),
  }) {
    if (setActiveAccountAndReload != null) {
      return setActiveAccountAndReload(this);
    }
    return orElse();
  }
}

abstract class SetActiveAccountAndReload implements LoginEvent {
  const factory SetActiveAccountAndReload(dynamic index) =
      _$SetActiveAccountAndReload;

  dynamic get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetActiveAccountAndReloadCopyWith<SetActiveAccountAndReload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  InitState init() {
    return const InitState();
  }

  OnActiveAccountChanged onActiveAccountChanged() {
    return const OnActiveAccountChanged();
  }

  GetSavedAccounts onAccountsLoaded(
      List<Account> accounts, int selectedAccountIndex) {
    return GetSavedAccounts(
      accounts,
      selectedAccountIndex,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onActiveAccountChanged,
    required TResult Function(List<Account> accounts, int selectedAccountIndex)
        onAccountsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onActiveAccountChanged,
    TResult Function(List<Account> accounts, int selectedAccountIndex)?
        onAccountsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(OnActiveAccountChanged value)
        onActiveAccountChanged,
    required TResult Function(GetSavedAccounts value) onAccountsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(OnActiveAccountChanged value)? onActiveAccountChanged,
    TResult Function(GetSavedAccounts value)? onAccountsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
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
    return 'LoginState.init()';
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
    required TResult Function() onActiveAccountChanged,
    required TResult Function(List<Account> accounts, int selectedAccountIndex)
        onAccountsLoaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onActiveAccountChanged,
    TResult Function(List<Account> accounts, int selectedAccountIndex)?
        onAccountsLoaded,
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
    required TResult Function(OnActiveAccountChanged value)
        onActiveAccountChanged,
    required TResult Function(GetSavedAccounts value) onAccountsLoaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(OnActiveAccountChanged value)? onActiveAccountChanged,
    TResult Function(GetSavedAccounts value)? onAccountsLoaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements LoginState {
  const factory InitState() = _$InitState;
}

/// @nodoc
abstract class $OnActiveAccountChangedCopyWith<$Res> {
  factory $OnActiveAccountChangedCopyWith(OnActiveAccountChanged value,
          $Res Function(OnActiveAccountChanged) then) =
      _$OnActiveAccountChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnActiveAccountChangedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $OnActiveAccountChangedCopyWith<$Res> {
  _$OnActiveAccountChangedCopyWithImpl(OnActiveAccountChanged _value,
      $Res Function(OnActiveAccountChanged) _then)
      : super(_value, (v) => _then(v as OnActiveAccountChanged));

  @override
  OnActiveAccountChanged get _value => super._value as OnActiveAccountChanged;
}

/// @nodoc

class _$OnActiveAccountChanged implements OnActiveAccountChanged {
  const _$OnActiveAccountChanged();

  @override
  String toString() {
    return 'LoginState.onActiveAccountChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnActiveAccountChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onActiveAccountChanged,
    required TResult Function(List<Account> accounts, int selectedAccountIndex)
        onAccountsLoaded,
  }) {
    return onActiveAccountChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onActiveAccountChanged,
    TResult Function(List<Account> accounts, int selectedAccountIndex)?
        onAccountsLoaded,
    required TResult orElse(),
  }) {
    if (onActiveAccountChanged != null) {
      return onActiveAccountChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(OnActiveAccountChanged value)
        onActiveAccountChanged,
    required TResult Function(GetSavedAccounts value) onAccountsLoaded,
  }) {
    return onActiveAccountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(OnActiveAccountChanged value)? onActiveAccountChanged,
    TResult Function(GetSavedAccounts value)? onAccountsLoaded,
    required TResult orElse(),
  }) {
    if (onActiveAccountChanged != null) {
      return onActiveAccountChanged(this);
    }
    return orElse();
  }
}

abstract class OnActiveAccountChanged implements LoginState {
  const factory OnActiveAccountChanged() = _$OnActiveAccountChanged;
}

/// @nodoc
abstract class $GetSavedAccountsCopyWith<$Res> {
  factory $GetSavedAccountsCopyWith(
          GetSavedAccounts value, $Res Function(GetSavedAccounts) then) =
      _$GetSavedAccountsCopyWithImpl<$Res>;
  $Res call({List<Account> accounts, int selectedAccountIndex});
}

/// @nodoc
class _$GetSavedAccountsCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $GetSavedAccountsCopyWith<$Res> {
  _$GetSavedAccountsCopyWithImpl(
      GetSavedAccounts _value, $Res Function(GetSavedAccounts) _then)
      : super(_value, (v) => _then(v as GetSavedAccounts));

  @override
  GetSavedAccounts get _value => super._value as GetSavedAccounts;

  @override
  $Res call({
    Object? accounts = freezed,
    Object? selectedAccountIndex = freezed,
  }) {
    return _then(GetSavedAccounts(
      accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      selectedAccountIndex == freezed
          ? _value.selectedAccountIndex
          : selectedAccountIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSavedAccounts implements GetSavedAccounts {
  const _$GetSavedAccounts(this.accounts, this.selectedAccountIndex);

  @override
  final List<Account> accounts;
  @override
  final int selectedAccountIndex;

  @override
  String toString() {
    return 'LoginState.onAccountsLoaded(accounts: $accounts, selectedAccountIndex: $selectedAccountIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSavedAccounts &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)) &&
            (identical(other.selectedAccountIndex, selectedAccountIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedAccountIndex, selectedAccountIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accounts) ^
      const DeepCollectionEquality().hash(selectedAccountIndex);

  @JsonKey(ignore: true)
  @override
  $GetSavedAccountsCopyWith<GetSavedAccounts> get copyWith =>
      _$GetSavedAccountsCopyWithImpl<GetSavedAccounts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onActiveAccountChanged,
    required TResult Function(List<Account> accounts, int selectedAccountIndex)
        onAccountsLoaded,
  }) {
    return onAccountsLoaded(accounts, selectedAccountIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onActiveAccountChanged,
    TResult Function(List<Account> accounts, int selectedAccountIndex)?
        onAccountsLoaded,
    required TResult orElse(),
  }) {
    if (onAccountsLoaded != null) {
      return onAccountsLoaded(accounts, selectedAccountIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(OnActiveAccountChanged value)
        onActiveAccountChanged,
    required TResult Function(GetSavedAccounts value) onAccountsLoaded,
  }) {
    return onAccountsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(OnActiveAccountChanged value)? onActiveAccountChanged,
    TResult Function(GetSavedAccounts value)? onAccountsLoaded,
    required TResult orElse(),
  }) {
    if (onAccountsLoaded != null) {
      return onAccountsLoaded(this);
    }
    return orElse();
  }
}

abstract class GetSavedAccounts implements LoginState {
  const factory GetSavedAccounts(
      List<Account> accounts, int selectedAccountIndex) = _$GetSavedAccounts;

  List<Account> get accounts => throw _privateConstructorUsedError;
  int get selectedAccountIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSavedAccountsCopyWith<GetSavedAccounts> get copyWith =>
      throw _privateConstructorUsedError;
}
