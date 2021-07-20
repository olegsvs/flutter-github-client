// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubEventModel _$_$_GithubEventModelFromJson(Map<String, dynamic> json) {
  return _$_GithubEventModel(
    actor: json['actor'] == null
        ? null
        : GithubEventUserModel.fromJson(json['actor'] as Map<String, dynamic>),
    type: json['type'] as String?,
    repo: json['repo'] == null
        ? null
        : GithubEventRepoModel.fromJson(json['repo'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    payload: json['payload'] == null
        ? null
        : GithubEventPayloadModel.fromJson(
            json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GithubEventModelToJson(
        _$_GithubEventModel instance) =>
    <String, dynamic>{
      'actor': instance.actor,
      'type': instance.type,
      'repo': instance.repo,
      'created_at': instance.createdAt?.toIso8601String(),
      'payload': instance.payload,
    };

_$_GithubEventUserModel _$_$_GithubEventUserModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubEventUserModel(
    login: json['login'] as String?,
    avatarUrl: json['avatar_url'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubEventUserModelToJson(
        _$_GithubEventUserModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
    };

_$_GithubEventRepoModel _$_$_GithubEventRepoModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubEventRepoModel(
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubEventRepoModelToJson(
        _$_GithubEventRepoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_GithubEventPayloadModel _$_$_GithubEventPayloadModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubEventPayloadModel(
    issue: json['issue'] == null
        ? null
        : GithubEventIssueModel.fromJson(json['issue'] as Map<String, dynamic>),
    pullRequest: json['pull_request'] == null
        ? null
        : GithubEventIssueModel.fromJson(
            json['pull_request'] as Map<String, dynamic>),
    comment: json['comment'] == null
        ? null
        : GithubEventCommentModel.fromJson(
            json['comment'] as Map<String, dynamic>),
    release: json['release'] == null
        ? null
        : GithubEventReleaseModel.fromJson(
            json['release'] as Map<String, dynamic>),
    action: json['action'] as String?,
    ref: json['ref'] as String?,
    refType: json['ref_type'] as String?,
    before: json['before'] as String?,
    head: json['head'] as String?,
    commits: (json['commits'] as List<dynamic>?)
        ?.map((e) => GithubEventCommitModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    forkee: json['forkee'] as Map<String, dynamic>?,
    pages: (json['pages'] as List<dynamic>?)
        ?.map((e) => GithubPagesItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    securityAdvisory: json['security_advisory'] == null
        ? null
        : GithubSecurityItemModel.fromJson(
            json['security_advisory'] as Map<String, dynamic>),
    alert: json['alert'] == null
        ? null
        : GithubAlertItemModel.fromJson(json['alert'] as Map<String, dynamic>),
    project: json['project'] == null
        ? null
        : GithubProjectItemModel.fromJson(
            json['project'] as Map<String, dynamic>),
    projectColumn: json['project_column'] == null
        ? null
        : GithubProjectColumnItemModel.fromJson(
            json['project_column'] as Map<String, dynamic>),
    installation: json['installation'] == null
        ? null
        : GithubInstallationRepositoriesItemModel.fromJson(
            json['installation'] as Map<String, dynamic>),
    checkRun: json['check_run'] == null
        ? null
        : GithubCheckrunItemModel.fromJson(
            json['check_run'] as Map<String, dynamic>),
    checkSuite: json['check_suite'] == null
        ? null
        : GithubCheckSuiteItemModel.fromJson(
            json['check_suite'] as Map<String, dynamic>),
    contentReference: json['content_reference'] == null
        ? null
        : GithubContentReferenceItemModel.fromJson(
            json['content_reference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GithubEventPayloadModelToJson(
        _$_GithubEventPayloadModel instance) =>
    <String, dynamic>{
      'issue': instance.issue,
      'pull_request': instance.pullRequest,
      'comment': instance.comment,
      'release': instance.release,
      'action': instance.action,
      'ref': instance.ref,
      'ref_type': instance.refType,
      'before': instance.before,
      'head': instance.head,
      'commits': instance.commits,
      'forkee': instance.forkee,
      'pages': instance.pages,
      'security_advisory': instance.securityAdvisory,
      'alert': instance.alert,
      'project': instance.project,
      'project_column': instance.projectColumn,
      'installation': instance.installation,
      'check_run': instance.checkRun,
      'check_suite': instance.checkSuite,
      'content_reference': instance.contentReference,
    };

_$_GithubEventIssueModel _$_$_GithubEventIssueModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubEventIssueModel(
    title: json['title'] as String?,
    user: json['user'] == null
        ? null
        : GithubEventUserModel.fromJson(json['user'] as Map<String, dynamic>),
    number: json['number'] as int?,
    body: json['body'] as String?,
    pullRequest: json['pull_request'],
    state: json['state'] as String?,
    comments: json['comments'] as int?,
    merged: json['merged'] as bool?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_GithubEventIssueModelToJson(
        _$_GithubEventIssueModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'user': instance.user,
      'number': instance.number,
      'body': instance.body,
      'pull_request': instance.pullRequest,
      'state': instance.state,
      'comments': instance.comments,
      'merged': instance.merged,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$_GithubEventCommentModel _$_$_GithubEventCommentModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubEventCommentModel(
    body: json['body'] as String?,
    user: json['user'] == null
        ? null
        : GithubEventUserModel.fromJson(json['user'] as Map<String, dynamic>),
    commitId: json['commit_id'] as String?,
    htmlUrl: json['html_url'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubEventCommentModelToJson(
        _$_GithubEventCommentModel instance) =>
    <String, dynamic>{
      'body': instance.body,
      'user': instance.user,
      'commit_id': instance.commitId,
      'html_url': instance.htmlUrl,
    };

_$_GithubEventCommitModel _$_$_GithubEventCommitModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubEventCommitModel(
    sha: json['sha'] as String?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubEventCommitModelToJson(
        _$_GithubEventCommitModel instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'message': instance.message,
    };

_$_GithubEventReleaseModel _$_$_GithubEventReleaseModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubEventReleaseModel(
    htmlUrl: json['html_url'] as String?,
    tagName: json['tag_name'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubEventReleaseModelToJson(
        _$_GithubEventReleaseModel instance) =>
    <String, dynamic>{
      'html_url': instance.htmlUrl,
      'tag_name': instance.tagName,
    };

_$_GithubNotificationItemModel _$_$_GithubNotificationItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubNotificationItemModel(
    id: json['id'] as String?,
    subject: json['subject'] == null
        ? null
        : GithubNotificationItemSubjectModel.fromJson(
            json['subject'] as Map<String, dynamic>),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    repository: json['repository'] == null
        ? null
        : GithubNotificationItemRepoModel.fromJson(
            json['repository'] as Map<String, dynamic>),
    unread: json['unread'] as bool?,
    key: json['key'] as String,
  );
}

Map<String, dynamic> _$_$_GithubNotificationItemModelToJson(
        _$_GithubNotificationItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'repository': instance.repository,
      'unread': instance.unread,
      'key': instance.key,
    };

_$_GithubNotificationItemSubjectModel
    _$_$_GithubNotificationItemSubjectModelFromJson(Map<String, dynamic> json) {
  return _$_GithubNotificationItemSubjectModel(
    title: json['title'] as String?,
    type: json['type'] as String?,
    url: json['url'] as String?,
    number: json['number'] as int?,
  );
}

Map<String, dynamic> _$_$_GithubNotificationItemSubjectModelToJson(
        _$_GithubNotificationItemSubjectModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
      'number': instance.number,
    };

_$_GithubNotificationItemRepoModel _$_$_GithubNotificationItemRepoModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubNotificationItemRepoModel(
    fullName: json['full_name'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubNotificationItemRepoModelToJson(
        _$_GithubNotificationItemRepoModel instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
    };

_$_GithubTreeItemModel _$_$_GithubTreeItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubTreeItemModel(
    name: json['name'] as String?,
    path: json['path'] as String?,
    size: json['size'] as int?,
    type: json['type'] as String?,
    downloadUrl: json['download_url'] as String?,
    content: json['content'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubTreeItemModelToJson(
        _$_GithubTreeItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'size': instance.size,
      'type': instance.type,
      'download_url': instance.downloadUrl,
      'content': instance.content,
    };

_$_GithubPagesItemModel _$_$_GithubPagesItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubPagesItemModel(
    pageName: json['page_name'] as String?,
    title: json['title'] as String?,
    action: json['action'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubPagesItemModelToJson(
        _$_GithubPagesItemModel instance) =>
    <String, dynamic>{
      'page_name': instance.pageName,
      'title': instance.title,
      'action': instance.action,
    };

_$_GithubSecurityItemModel _$_$_GithubSecurityItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubSecurityItemModel(
    summary: json['summary'] as String?,
    description: json['description'] as String?,
    severity: json['severity'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubSecurityItemModelToJson(
        _$_GithubSecurityItemModel instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'description': instance.description,
      'severity': instance.severity,
    };

_$_GithubAlertItemModel _$_$_GithubAlertItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubAlertItemModel(
    affectedPackageName: json['affected_package_name'] as String?,
    affectedRange: json['affected_range'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubAlertItemModelToJson(
        _$_GithubAlertItemModel instance) =>
    <String, dynamic>{
      'affected_package_name': instance.affectedPackageName,
      'affected_range': instance.affectedRange,
    };

_$_GithubProjectItemModel _$_$_GithubProjectItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubProjectItemModel(
    name: json['name'] as String?,
    state: json['state'] as String?,
    body: json['body'] as String?,
    htmlUrl: json['html_url'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubProjectItemModelToJson(
        _$_GithubProjectItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'state': instance.state,
      'body': instance.body,
      'html_url': instance.htmlUrl,
    };

_$_GithubProjectColumnItemModel _$_$_GithubProjectColumnItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubProjectColumnItemModel(
    htmlUrl: json['html_url'] as String?,
    columnsUrl: json['columns_url'] as String?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubProjectColumnItemModelToJson(
        _$_GithubProjectColumnItemModel instance) =>
    <String, dynamic>{
      'html_url': instance.htmlUrl,
      'columns_url': instance.columnsUrl,
      'name': instance.name,
    };

_$_GithubInstallationRepositoriesItemModel
    _$_$_GithubInstallationRepositoriesItemModelFromJson(
        Map<String, dynamic> json) {
  return _$_GithubInstallationRepositoriesItemModel(
    repositoriesAdded: (json['repositories_added'] as List<dynamic>?)
        ?.map((e) =>
            GithubNotificationItemRepoModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    repositoriesRemoved: (json['repositories_removed'] as List<dynamic>?)
        ?.map((e) =>
            GithubNotificationItemRepoModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    repositoriesSelection: json['repositories_selection'] as String?,
    id: json['id'] as int?,
  );
}

Map<String, dynamic> _$_$_GithubInstallationRepositoriesItemModelToJson(
        _$_GithubInstallationRepositoriesItemModel instance) =>
    <String, dynamic>{
      'repositories_added': instance.repositoriesAdded,
      'repositories_removed': instance.repositoriesRemoved,
      'repositories_selection': instance.repositoriesSelection,
      'id': instance.id,
    };

_$_GithubCheckrunItemModel _$_$_GithubCheckrunItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubCheckrunItemModel(
    status: json['status'] as String?,
    name: json['name'] as String?,
    id: json['id'] as int?,
  );
}

Map<String, dynamic> _$_$_GithubCheckrunItemModelToJson(
        _$_GithubCheckrunItemModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'name': instance.name,
      'id': instance.id,
    };

_$_GithubCheckSuiteItemModel _$_$_GithubCheckSuiteItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubCheckSuiteItemModel(
    status: json['status'] as String?,
    conclusion: json['conclusion'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubCheckSuiteItemModelToJson(
        _$_GithubCheckSuiteItemModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'conclusion': instance.conclusion,
    };

_$_GithubContentReferenceItemModel _$_$_GithubContentReferenceItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubContentReferenceItemModel(
    id: json['id'] as int?,
    reference: json['reference'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubContentReferenceItemModelToJson(
        _$_GithubContentReferenceItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference': instance.reference,
    };

_$_GithubContributorItemModel _$_$_GithubContributorItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubContributorItemModel(
    id: json['id'] as int?,
    login: json['login'] as String?,
    avatarUrl: json['avatar_url'] as String?,
    htmlUrl: json['html_url'] as String?,
    contributions: json['contributions'] as int?,
  );
}

Map<String, dynamic> _$_$_GithubContributorItemModelToJson(
        _$_GithubContributorItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
      'contributions': instance.contributions,
    };

_$_GithubUserOrganizationItemModel _$_$_GithubUserOrganizationItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubUserOrganizationItemModel(
    id: json['id'] as int?,
    login: json['login'] as String?,
    avatarUrl: json['avatar_url'] as String?,
    description: json['description'] as String?,
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubUserOrganizationItemModelToJson(
        _$_GithubUserOrganizationItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'description': instance.description,
      'url': instance.url,
    };

_$_GistFilesModel _$_$_GistFilesModelFromJson(Map<String, dynamic> json) {
  return _$_GistFilesModel(
    filename: json['filename'] as String?,
    size: json['size'] as int?,
    rawUrl: json['raw_url'] as String?,
    type: json['type'] as String?,
    language: json['language'] as String?,
    truncated: json['truncated'] as bool?,
    content: json['content'] as String?,
  );
}

Map<String, dynamic> _$_$_GistFilesModelToJson(_$_GistFilesModel instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'size': instance.size,
      'raw_url': instance.rawUrl,
      'type': instance.type,
      'language': instance.language,
      'truncated': instance.truncated,
      'content': instance.content,
    };

_$_GithubGistsItemModel _$_$_GithubGistsItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubGistsItemModel(
    id: json['id'] as String?,
    description: json['description'] as String?,
    public: json['public'] as bool?,
    files: (json['files'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, GistFilesModel.fromJson(e as Map<String, dynamic>)),
    ),
    owner: json['owner'] == null
        ? null
        : GithubEventUserModel.fromJson(json['owner'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$_$_GithubGistsItemModelToJson(
        _$_GithubGistsItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'public': instance.public,
      'files': instance.files,
      'owner': instance.owner,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$_GithubFilesItemModel _$_$_GithubFilesItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubFilesItemModel(
    filename: json['filename'] as String?,
    status: json['status'] as String?,
    additions: json['additions'] as int?,
    deletions: json['deletions'] as int?,
    changes: json['changes'] as int?,
    patch: json['patch'] as String?,
  );
}

Map<String, dynamic> _$_$_GithubFilesItemModelToJson(
        _$_GithubFilesItemModel instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'status': instance.status,
      'additions': instance.additions,
      'deletions': instance.deletions,
      'changes': instance.changes,
      'patch': instance.patch,
    };

_$_GithubComparisonItemModel _$_$_GithubComparisonItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_GithubComparisonItemModel(
    files: (json['files'] as List<dynamic>?)
        ?.map((e) => GithubFilesItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    status: json['status'] as String?,
    aheadBy: json['ahead_by'] as int?,
    behindBy: json['behind_by'] as int?,
  );
}

Map<String, dynamic> _$_$_GithubComparisonItemModelToJson(
        _$_GithubComparisonItemModel instance) =>
    <String, dynamic>{
      'files': instance.files,
      'status': instance.status,
      'ahead_by': instance.aheadBy,
      'behind_by': instance.behindBy,
    };
