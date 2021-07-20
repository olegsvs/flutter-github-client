import 'package:freezed_annotation/freezed_annotation.dart';

import '../mapper.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:json_annotation/json_annotation.dart';

part 'github_model.freezed.dart';

part 'github_model.g.dart';

@freezed
abstract class GithubEventModel with _$GithubEventModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubEventModel(
      {required GithubEventUserModel? actor,
      required String? type,
      required GithubEventRepoModel? repo,
      required DateTime? createdAt,
      required GithubEventPayloadModel? payload}) = _GithubEventModel;

  factory GithubEventModel.fromJson(Map<String, dynamic> json) =>
      _$GithubEventModelFromJson(json);
}

extension GithubEventModelX on GithubEventModel {
  GithubEvent toEntity() => GithubEvent(
      actor: GithubEventUser(avatarUrl: actor?.avatarUrl, login: actor?.login),
      createdAt: createdAt,
      type: type,
      repo: GithubEventRepo(name: repo?.name),
      payload: payload?.toEntity(),
      repoOwner: Mapper.parseRepositoryOwnerName(repo!.name!),
      repoName: Mapper.parseRepositoryName(repo!.name!));
}

@freezed
abstract class GithubEventUserModel with _$GithubEventUserModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubEventUserModel(
      {required String? login,
      required String? avatarUrl}) = _GithubEventUserModel;

  factory GithubEventUserModel.fromJson(Map<String, dynamic> json) =>
      _$GithubEventUserModelFromJson(json);
}

extension GithubEventUserModelX on GithubEventUserModel {
  GithubEventUser toEntity() =>
      GithubEventUser(login: login, avatarUrl: avatarUrl);
}

@freezed
abstract class GithubEventRepoModel with _$GithubEventRepoModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubEventRepoModel({required String? name}) =
      _GithubEventRepoModel;

  factory GithubEventRepoModel.fromJson(Map<String, dynamic> json) =>
      _$GithubEventRepoModelFromJson(json);
}

@freezed
abstract class GithubEventPayloadModel with _$GithubEventPayloadModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubEventPayloadModel(
          {required GithubEventIssueModel? issue,
          required GithubEventIssueModel? pullRequest,
          required GithubEventCommentModel? comment,
          required GithubEventReleaseModel? release,
          required String? action,
          required String? ref,
          required String? refType,
          required String? before,
          required String? head,
          required List<GithubEventCommitModel>? commits,
          required Map<String, dynamic>? forkee,
          required List<GithubPagesItemModel>? pages,
          required GithubSecurityItemModel? securityAdvisory,
          required GithubAlertItemModel? alert,
          required GithubProjectItemModel? project,
          required GithubProjectColumnItemModel? projectColumn,
          required GithubInstallationRepositoriesItemModel? installation,
          required GithubCheckrunItemModel? checkRun,
          required GithubCheckSuiteItemModel? checkSuite,
          required GithubContentReferenceItemModel? contentReference}) =
      _GithubEventPayloadModel;

  factory GithubEventPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$GithubEventPayloadModelFromJson(json);
}

extension GithubEventPayloadModelX on GithubEventPayloadModel {
  GithubEventPayload toEntity() => GithubEventPayload(
      issue: issue?.toEntity(),
      pullRequest: pullRequest?.toEntity(),
      comment: comment?.toEntity(),
      release: release?.toEntity(),
      action: action,
      ref: ref,
      refType: refType,
      before: before,
      head: head,
      commits: commits?.map((e) => e.toEntity()).toList(),
      forkee: forkee,
      pages: pages?.map((e) => e.toEntity()).toList(),
      securityAdvisory: securityAdvisory?.toEntity(),
      alert: alert?.toEntity(),
      project: project?.toEntity(),
      projectColumn: projectColumn?.toEntity(),
      installation: installation?.toEntity(),
      checkRun: checkRun?.toEntity(),
      checkSuite: checkSuite?.toEntity(),
      contentReference: contentReference?.toEntity());
}

@freezed
abstract class GithubEventIssueModel with _$GithubEventIssueModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubEventIssueModel(
      {required String? title,
      required GithubEventUserModel? user,
      required int? number,
      required String? body,
      required dynamic pullRequest,
      required String? state,
      required int? comments,
      required bool? merged,
      required DateTime? createdAt}) = _GithubEventIssueModel;

  factory GithubEventIssueModel.fromJson(Map<String, dynamic> json) =>
      _$GithubEventIssueModelFromJson(json);
}

extension GithubEventIssueModelX on GithubEventIssueModel {
  GithubEventIssue toEntity() => GithubEventIssue(
      title: title,
      user: user?.toEntity(),
      number: number,
      body: body,
      pullRequest: pullRequest,
      state: state,
      comments: comments,
      merged: merged,
      createdAt: createdAt,
      isPullRequestComment: pullRequest != null);
}

@freezed
abstract class GithubEventCommentModel with _$GithubEventCommentModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubEventCommentModel(
      {required String? body,
      required GithubEventUserModel? user,
      required String? commitId,
      required String? htmlUrl}) = _GithubEventCommentModel;

  factory GithubEventCommentModel.fromJson(Map<String, dynamic> json) =>
      _$GithubEventCommentModelFromJson(json);
}

extension GithubEventCommentModelX on GithubEventCommentModel {
  GithubEventComment toEntity() => GithubEventComment(
      htmlUrl: htmlUrl, body: body, commitId: commitId, user: user?.toEntity());
}

@freezed
abstract class GithubEventCommitModel with _$GithubEventCommitModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubEventCommitModel(
      {required String? sha,
      required String? message}) = _GithubEventCommitModel;

  factory GithubEventCommitModel.fromJson(Map<String, dynamic> json) =>
      _$GithubEventCommitModelFromJson(json);
}

extension GithubEventCommitModelX on GithubEventCommitModel {
  GithubEventCommit toEntity() => GithubEventCommit(sha: sha, message: message);
}

@freezed
abstract class GithubEventReleaseModel with _$GithubEventReleaseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubEventReleaseModel(
      {required String? htmlUrl,
      required String? tagName}) = _GithubEventReleaseModel;

  factory GithubEventReleaseModel.fromJson(Map<String, dynamic> json) =>
      _$GithubEventReleaseModelFromJson(json);
}

extension GithubEventReleaseModelX on GithubEventReleaseModel {
  GithubEventRelease toEntity() =>
      GithubEventRelease(htmlUrl: htmlUrl, tagName: tagName);
}

@freezed
abstract class GithubNotificationItemModel with _$GithubNotificationItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubNotificationItemModel(
      {required String? id,
      required GithubNotificationItemSubjectModel? subject,
      required DateTime? updatedAt,
      required GithubNotificationItemRepoModel? repository,
      required bool? unread,
      required String key}) = _GithubNotificationItemModel;

  factory GithubNotificationItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubNotificationItemModelFromJson(json);
}

@freezed
abstract class GithubNotificationItemSubjectModel
    with _$GithubNotificationItemSubjectModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubNotificationItemSubjectModel(
      {required String? title,
      required String? type,
      required String? url,
      required int? number}) = _GithubNotificationItemSubjectModel;

  factory GithubNotificationItemSubjectModel.fromJson(
          Map<String, dynamic> json) =>
      _$GithubNotificationItemSubjectModelFromJson(json);
}

@freezed
abstract class GithubNotificationItemRepoModel
    with _$GithubNotificationItemRepoModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubNotificationItemRepoModel({required String? fullName}) =
      _GithubNotificationItemRepoModel;

  factory GithubNotificationItemRepoModel.fromJson(Map<String, dynamic> json) =>
      _$GithubNotificationItemRepoModelFromJson(json);
}

extension GithubNotificationItemRepoModelX on GithubNotificationItemRepoModel {
  GithubNotificationItemRepo toEntity() => GithubNotificationItemRepo(
      fullName: fullName,
      owner: Mapper.parseRepositoryOwnerName(fullName ?? 'unknown'),
      name: Mapper.parseRepositoryName(fullName ?? 'unknown'));
}

@freezed
abstract class GithubTreeItemModel with _$GithubTreeItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubTreeItemModel(
      {required String? name,
      required String? path,
      required int? size,
      required String? type,
      required String? downloadUrl,
      required String? content}) = _GithubTreeItemModel;

  factory GithubTreeItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubTreeItemModelFromJson(json);
}

@freezed
abstract class GithubPagesItemModel with _$GithubPagesItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubPagesItemModel(
      {required String? pageName,
      required String? title,
      required String? action}) = _GithubPagesItemModel;

  factory GithubPagesItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubPagesItemModelFromJson(json);
}

extension GithubPagesItemModelX on GithubPagesItemModel {
  GithubPagesItem toEntity() =>
      GithubPagesItem(action: action, pageName: pageName, title: title);
}

@freezed
abstract class GithubSecurityItemModel with _$GithubSecurityItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubSecurityItemModel(
      {required String? summary,
      required String? description,
      required String? severity}) = _GithubSecurityItemModel;

  factory GithubSecurityItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubSecurityItemModelFromJson(json);
}

extension GithubSecurityItemModelX on GithubSecurityItemModel {
  GithubSecurityItem toEntity() => GithubSecurityItem(
      description: description, summary: summary, severity: severity);
}

@freezed
abstract class GithubAlertItemModel with _$GithubAlertItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubAlertItemModel(
      {required String? affectedPackageName,
      required String? affectedRange}) = _GithubAlertItemModel;

  factory GithubAlertItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubAlertItemModelFromJson(json);
}

extension GithubAlertItemModelX on GithubAlertItemModel {
  GithubAlertItem toEntity() => GithubAlertItem(
      affectedRange: affectedRange, affectedPackageName: affectedPackageName);
}

@freezed
abstract class GithubProjectItemModel with _$GithubProjectItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubProjectItemModel(
      {required String? name,
      required String? state,
      required String? body,
      required String? htmlUrl}) = _GithubProjectItemModel;

  factory GithubProjectItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubProjectItemModelFromJson(json);
}

extension GithubProjectItemModelX on GithubProjectItemModel {
  GithubProjectItem toEntity() =>
      GithubProjectItem(htmlUrl: htmlUrl, body: body, name: name, state: state);
}

@freezed
abstract class GithubProjectColumnItemModel
    with _$GithubProjectColumnItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubProjectColumnItemModel(
      {required String? htmlUrl,
      required String? columnsUrl,
      required String? name}) = _GithubProjectColumnItemModel;

  factory GithubProjectColumnItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubProjectColumnItemModelFromJson(json);
}

extension GithubProjectColumnItemModelX on GithubProjectColumnItemModel {
  GithubProjectColumnItem toEntity() => GithubProjectColumnItem(
      name: name, htmlUrl: htmlUrl, columnsUrl: columnsUrl);
}

@freezed
abstract class GithubInstallationRepositoriesItemModel
    with _$GithubInstallationRepositoriesItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubInstallationRepositoriesItemModel(
      {required List<GithubNotificationItemRepoModel>? repositoriesAdded,
      required List<GithubNotificationItemRepoModel>? repositoriesRemoved,
      required String? repositoriesSelection,
      required int? id}) = _GithubInstallationRepositoriesItemModel;

  factory GithubInstallationRepositoriesItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$GithubInstallationRepositoriesItemModelFromJson(json);
}

extension GithubInstallationRepositoriesItemModelX
    on GithubInstallationRepositoriesItemModel {
  GithubInstallationRepositoriesItem toEntity() =>
      GithubInstallationRepositoriesItem(
          id: id,
          repositoriesSelection: repositoriesSelection,
          repositoriesRemoved:
              repositoriesRemoved?.map((e) => e.toEntity()).toList(),
          repositoriesAdded:
              repositoriesAdded?.map((e) => e.toEntity()).toList());
}

@freezed
abstract class GithubCheckrunItemModel with _$GithubCheckrunItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubCheckrunItemModel(
      {required String? status,
      required String? name,
      required int? id}) = _GithubCheckrunItemModel;

  factory GithubCheckrunItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubCheckrunItemModelFromJson(json);
}

extension GithubCheckrunItemModelX on GithubCheckrunItemModel {
  GithubCheckrunItem toEntity() =>
      GithubCheckrunItem(id: id, name: name, status: status);
}

@freezed
abstract class GithubCheckSuiteItemModel with _$GithubCheckSuiteItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubCheckSuiteItemModel(
      {required String? status,
      required String? conclusion}) = _GithubCheckSuiteItemModel;

  factory GithubCheckSuiteItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubCheckSuiteItemModelFromJson(json);
}

extension GithubCheckSuiteItemModelX on GithubCheckSuiteItemModel {
  GithubCheckSuiteItem toEntity() =>
      GithubCheckSuiteItem(status: status, conclusion: conclusion);
}

@freezed
abstract class GithubContentReferenceItemModel
    with _$GithubContentReferenceItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubContentReferenceItemModel(
      {required int? id,
      required String? reference}) = _GithubContentReferenceItemModel;

  factory GithubContentReferenceItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubContentReferenceItemModelFromJson(json);
}

extension GithubContentReferenceItemModelX on GithubContentReferenceItemModel {
  GithubContentReferenceItem toEntity() =>
      GithubContentReferenceItem(id: id, reference: reference);
}

@freezed
abstract class GithubContributorItemModel with _$GithubContributorItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubContributorItemModel(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? htmlUrl,
      required int? contributions}) = _GithubContributorItemModel;

  factory GithubContributorItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubContributorItemModelFromJson(json);
}

extension GithubContributorItemModelX on GithubContributorItemModel {
  GithubContributorItem toEntity() => GithubContributorItem(
      id: id,
      login: login,
      avatarUrl: avatarUrl,
      htmlUrl: htmlUrl,
      contributions: contributions);
}

@freezed
abstract class GithubUserOrganizationItemModel
    with _$GithubUserOrganizationItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubUserOrganizationItemModel(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? description,
      required String? url}) = _GithubUserOrganizationItemModel;

  factory GithubUserOrganizationItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubUserOrganizationItemModelFromJson(json);
}

extension GithubUserOrganizationItemModelX on GithubUserOrganizationItemModel {
  GithubUserOrganizationItem toEntity() => GithubUserOrganizationItem(
      avatarUrl: avatarUrl,
      id: id,
      login: login,
      description: description,
      url: url);
}

@freezed
abstract class GistFilesModel with _$GistFilesModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GistFilesModel({
    required String? filename,
    required int? size,
    required String? rawUrl,
    required String? type,
    required String? language,
    required bool? truncated,
    required String? content,
  }) = _GistFilesModel;

  factory GistFilesModel.fromJson(Map<String, dynamic> json) =>
      _$GistFilesModelFromJson(json);
}

extension GistFilesModelX on GistFilesModel {
  GistFiles toEntity() => GistFiles(
      filename: filename,
      truncated: truncated,
      rawUrl: rawUrl,
      language: language,
      type: type,
      content: content,
      size: size);
}

@freezed
abstract class GithubGistsItemModel with _$GithubGistsItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubGistsItemModel(
      {required String? id,
      required String? description,
      required bool? public,
      required Map<String, GistFilesModel>? files,
      required GithubEventUserModel? owner,
      required DateTime? createdAt,
      required DateTime? updatedAt}) = _GithubGistsItemModel;

  factory GithubGistsItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubGistsItemModelFromJson(json);
}

extension GithubGistsItemModelX on GithubGistsItemModel {
  GithubGistsItem toEntity() => GithubGistsItem(
      id: id,
      description: description,
      public: public,
      owner: GithubEventUser(login: owner!.login, avatarUrl: owner!.avatarUrl),
      createdAt: createdAt,
      updatedAt: updatedAt,
      fileNames: files!.entries.map((e) => e.value.toEntity()).toList());
}

@freezed
abstract class GithubFilesItemModel with _$GithubFilesItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubFilesItemModel(
      {required String? filename,
      required String? status,
      required int? additions,
      required int? deletions,
      required int? changes,
      required String? patch}) = _GithubFilesItemModel;

  factory GithubFilesItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubFilesItemModelFromJson(json);
}

extension GithubFilesItemModelX on GithubFilesItemModel {
  GithubFilesItem toEntity() => GithubFilesItem(
      filename: filename,
      status: status,
      additions: additions,
      deletions: deletions,
      changes: changes,
      patch: patch);
}

@freezed
abstract class GithubComparisonItemModel with _$GithubComparisonItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubComparisonItemModel(
      {required List<GithubFilesItemModel>? files,
      required String? status,
      required int? aheadBy,
      required int? behindBy}) = _GithubComparisonItemModel;

  factory GithubComparisonItemModel.fromJson(Map<String, dynamic> json) =>
      _$GithubComparisonItemModelFromJson(json);
}

extension GithubComparisonItemModelX on GithubComparisonItemModel {
  GithubComparisonItem toEntity() => GithubComparisonItem(
      files: files?.map((e) => e.toEntity()).toList(), status: status, aheadBy: aheadBy, behindBy: behindBy);
}
