import 'package:freezed_annotation/freezed_annotation.dart';
part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
    required String platform,
    required String domain,
    required String token,
    required String login,
    required String avatarUrl
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}