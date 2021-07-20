import 'package:freezed_annotation/freezed_annotation.dart';

part 'github.freezed.dart';

@freezed
abstract class GithubEvent with _$GithubEvent {
  const factory GithubEvent({
    required GithubEventUser? actor,
    required String? type,
    required GithubEventRepo? repo,
    required DateTime? createdAt,
    required GithubEventPayload? payload,
    required String repoOwner,
    required String repoName,
  }) = _GithubEvent;
}

@freezed
abstract class GithubEventUser with _$GithubEventUser {
  const factory GithubEventUser(
      {required String? login, required String? avatarUrl}) = _GithubEventUser;
}

@freezed
abstract class GithubEventRepo with _$GithubEventRepo {
  const factory GithubEventRepo({required String? name}) = _GithubEventRepo;
}

@freezed
abstract class GithubEventPayload with _$GithubEventPayload {
  const factory GithubEventPayload(
          {required GithubEventIssue? issue,
          required GithubEventIssue? pullRequest,
          required GithubEventComment? comment,
          required GithubEventRelease? release,
          required String? action,
          required String? ref,
          required String? refType,
          required String? before,
          required String? head,
          required List<GithubEventCommit>? commits,
          required Map<String, dynamic>? forkee,
          required List<GithubPagesItem>? pages,
          required GithubSecurityItem? securityAdvisory,
          required GithubAlertItem? alert,
          required GithubProjectItem? project,
          required GithubProjectColumnItem? projectColumn,
          required GithubInstallationRepositoriesItem? installation,
          required GithubCheckrunItem? checkRun,
          required GithubCheckSuiteItem? checkSuite,
          required GithubContentReferenceItem? contentReference}) =
      _GithubEventPayload;
}

@freezed
abstract class GithubEventIssue with _$GithubEventIssue {
  const factory GithubEventIssue(
      {required String? title,
      required GithubEventUser? user,
      required int? number,
      required String? body,
      required dynamic pullRequest,
      required String? state,
      required int? comments,
      required bool? merged,
      required DateTime? createdAt,
      required bool isPullRequestComment}) = _GithubEventIssue;
}

@freezed
abstract class GithubEventComment with _$GithubEventComment {
  const factory GithubEventComment(
      {required String? body,
      required GithubEventUser? user,
      required String? commitId,
      required String? htmlUrl}) = _GithubEventComment;
}

@freezed
abstract class GithubEventCommit with _$GithubEventCommit {
  const factory GithubEventCommit(
      {required String? sha, required String? message}) = _GithubEventCommit;
}

@freezed
abstract class GithubEventRelease with _$GithubEventRelease {
  const factory GithubEventRelease(
      {required String? htmlUrl,
      required String? tagName}) = _GithubEventRelease;
}

@freezed
abstract class GithubNotificationItem with _$GithubNotificationItem {
  //TODO String get key => '_$hashCode';
  const factory GithubNotificationItem(
      {required String? id,
      required GithubNotificationItemSubject? subject,
      required DateTime? updatedAt,
      required GithubNotificationItemRepo? repository,
      required bool? unread,
      required String? state,
      required String key}) = _GithubNotificationItem;
}

@freezed
abstract class GithubNotificationItemSubject
    with _$GithubNotificationItemSubject {
  const factory GithubNotificationItemSubject(
      {required String? title,
      required String? type,
      required String? url,
      required int? number}) = _GithubNotificationItemSubject;
}

@freezed
abstract class GithubNotificationItemRepo with _$GithubNotificationItemRepo {
  const factory GithubNotificationItemRepo(
      {required String? fullName,
      required String owner,
      required String name}) = _GithubNotificationItemRepo;
}

@freezed
abstract class GithubTreeItem with _$GithubTreeItem {
  const factory GithubTreeItem(
      {required String? name,
      required String? path,
      required int? size,
      required String? type,
      required String? downloadUrl,
      required String? content}) = _GithubTreeItem;
}

@freezed
abstract class GithubPagesItem with _$GithubPagesItem {
  const factory GithubPagesItem(
      {required String? pageName,
      required String? title,
      required String? action}) = _GithubPagesItem;
}

@freezed
abstract class GithubSecurityItem with _$GithubSecurityItem {
  const factory GithubSecurityItem(
      {required String? summary,
      required String? description,
      required String? severity}) = _GithubSecurityItem;
}

@freezed
abstract class GithubAlertItem with _$GithubAlertItem {
  const factory GithubAlertItem(
      {required String? affectedPackageName,
      required String? affectedRange}) = _GithubAlertItem;
}

@freezed
abstract class GithubProjectItem with _$GithubProjectItem {
  const factory GithubProjectItem(
      {required String? name,
      required String? state,
      required String? body,
      required String? htmlUrl}) = _GithubProjectItem;
}

@freezed
abstract class GithubProjectColumnItem with _$GithubProjectColumnItem {
  const factory GithubProjectColumnItem(
      {required String? htmlUrl,
      required String? columnsUrl,
      required String? name}) = _GithubProjectColumnItem;
}

@freezed
abstract class GithubInstallationRepositoriesItem
    with _$GithubInstallationRepositoriesItem {
  const factory GithubInstallationRepositoriesItem(
      {required List<GithubNotificationItemRepo>? repositoriesAdded,
      required List<GithubNotificationItemRepo>? repositoriesRemoved,
      required String? repositoriesSelection,
      required int? id}) = _GithubInstallationRepositoriesItem;
}

@freezed
abstract class GithubCheckrunItem with _$GithubCheckrunItem {
  const factory GithubCheckrunItem(
      {required String? status,
      required String? name,
      required int? id}) = _GithubCheckrunItem;
}

@freezed
abstract class GithubCheckSuiteItem with _$GithubCheckSuiteItem {
  const factory GithubCheckSuiteItem(
      {required String? status,
      required String? conclusion}) = _GithubCheckSuiteItem;
}

@freezed
abstract class GithubContentReferenceItem with _$GithubContentReferenceItem {
  const factory GithubContentReferenceItem(
      {required int? id,
      required String? reference}) = _GithubContentReferenceItem;
}

@freezed
abstract class GithubContributorItem with _$GithubContributorItem {
  const factory GithubContributorItem(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? htmlUrl,
      required int? contributions}) = _GithubContributorItem;
}

@freezed
abstract class GithubUserOrganizationItem with _$GithubUserOrganizationItem {
  const factory GithubUserOrganizationItem(
      {required int? id,
      required String? login,
      required String? avatarUrl,
      required String? description,
      required String? url}) = _GithubUserOrganizationItem;
}

@freezed
abstract class GistFiles with _$GistFiles {
  const factory GistFiles({
    required String? filename,
    required int? size,
    required String? rawUrl,
    required String? type,
    required String? language,
    required bool? truncated,
    required String? content,
  }) = _GistFiles;
}

@freezed
abstract class GithubGistsItem with _$GithubGistsItem {
  const factory GithubGistsItem(
      {required String? id,
      required String? description,
      required bool? public,
      required GithubEventUser? owner,
      required List<GistFiles> fileNames,
      required DateTime? createdAt,
      required DateTime? updatedAt}) = _GithubGistsItem;
}

@freezed
abstract class GithubFilesItem with _$GithubFilesItem {
  const factory GithubFilesItem(
      {required String? filename,
      required String? status,
      required int? additions,
      required int? deletions,
      required int? changes,
      required String? patch}) = _GithubFilesItem;
}

@freezed
abstract class GithubComparisonItem with _$GithubComparisonItem {
  const factory GithubComparisonItem(
      {required List<GithubFilesItem>? files,
      required String? status,
      required int? aheadBy,
      required int? behindBy}) = _GithubComparisonItem;
}
