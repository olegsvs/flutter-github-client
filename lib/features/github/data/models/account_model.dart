import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
abstract class AccountModel with _$AccountModel {
  @JsonSerializable(includeIfNull: false)
  const factory AccountModel({required String platform,
    required String domain,
    required String token,
    required String login,
    required String avatarUrl}) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);

  factory AccountModel.fromEntity(Account account) =>
      AccountModel(
          platform: account.platform,
          domain: account.domain,
          token: account.token,
          login: account.login,
          avatarUrl: account.avatarUrl);
}

extension AccountModelX on AccountModel {
  Account toEntity() =>
      Account(
          platform: platform,
          domain: domain,
          token: token,
          login: login,
          avatarUrl: avatarUrl
      );
}