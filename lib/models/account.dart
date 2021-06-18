import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable(includeIfNull: false)
class Account {
  String platform;
  String domain;
  String token;
  String login;
  String avatarUrl;

  Account({
    required this.platform,
    required this.domain,
    required this.token,
    required this.login,
    required this.avatarUrl
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
