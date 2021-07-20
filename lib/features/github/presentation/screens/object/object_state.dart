part of 'object_bloc.dart';

@freezed
abstract class ObjectState with _$ObjectState {
  const factory ObjectState.init() = InitState;
}