// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GAcceptEnterpriseAdministratorInvitationInput.serializer)
      ..add(GAcceptTopicSuggestionInput.serializer)
      ..add(GAddAssigneesToAssignableInput.serializer)
      ..add(GAddCommentInput.serializer)
      ..add(GAddLabelsToLabelableInput.serializer)
      ..add(GAddProjectCardInput.serializer)
      ..add(GAddProjectColumnInput.serializer)
      ..add(GAddPullRequestReviewCommentInput.serializer)
      ..add(GAddPullRequestReviewInput.serializer)
      ..add(GAddPullRequestReviewThreadInput.serializer)
      ..add(GAddReactionInput.serializer)
      ..add(GAddStarInput.serializer)
      ..add(GArchiveRepositoryInput.serializer)
      ..add(GAssignedEventPartsData.serializer)
      ..add(GAssignedEventPartsData_actor.serializer)
      ..add(GAssignedEventPartsData_assignee__asBot.serializer)
      ..add(GAssignedEventPartsData_assignee__asMannequin.serializer)
      ..add(GAssignedEventPartsData_assignee__asOrganization.serializer)
      ..add(GAssignedEventPartsData_assignee__asUser.serializer)
      ..add(GAssignedEventPartsData_assignee__base.serializer)
      ..add(GAssignedEventPartsReq.serializer)
      ..add(GAssignedEventPartsVars.serializer)
      ..add(GAuditLogOrder.serializer)
      ..add(GAuditLogOrderField.serializer)
      ..add(GBaseRefForcePushedEventPartsData.serializer)
      ..add(GBaseRefForcePushedEventPartsData_actor.serializer)
      ..add(GBaseRefForcePushedEventPartsData_afterCommit.serializer)
      ..add(GBaseRefForcePushedEventPartsData_beforeCommit.serializer)
      ..add(GBaseRefForcePushedEventPartsData_pullRequest.serializer)
      ..add(GBaseRefForcePushedEventPartsData_pullRequest_baseRef.serializer)
      ..add(GBaseRefForcePushedEventPartsReq.serializer)
      ..add(GBaseRefForcePushedEventPartsVars.serializer)
      ..add(GCancelEnterpriseAdminInvitationInput.serializer)
      ..add(GChangeUserStatusInput.serializer)
      ..add(GCheckAnnotationData.serializer)
      ..add(GCheckAnnotationLevel.serializer)
      ..add(GCheckAnnotationRange.serializer)
      ..add(GCheckConclusionState.serializer)
      ..add(GCheckRunAction.serializer)
      ..add(GCheckRunFilter.serializer)
      ..add(GCheckRunOutput.serializer)
      ..add(GCheckRunOutputImage.serializer)
      ..add(GCheckRunType.serializer)
      ..add(GCheckStatusState.serializer)
      ..add(GCheckSuiteAutoTriggerPreference.serializer)
      ..add(GCheckSuiteFilter.serializer)
      ..add(GClearLabelsFromLabelableInput.serializer)
      ..add(GCloneProjectInput.serializer)
      ..add(GCloneTemplateRepositoryInput.serializer)
      ..add(GCloseIssueInput.serializer)
      ..add(GClosePullRequestInput.serializer)
      ..add(GClosedEventPartsData.serializer)
      ..add(GClosedEventPartsData_actor.serializer)
      ..add(GClosedEventPartsReq.serializer)
      ..add(GClosedEventPartsVars.serializer)
      ..add(GCollaboratorAffiliation.serializer)
      ..add(GCommentAuthorAssociation.serializer)
      ..add(GCommentCannotUpdateReason.serializer)
      ..add(GCommentPartsData.serializer)
      ..add(GCommentPartsData_author.serializer)
      ..add(GCommentPartsReq.serializer)
      ..add(GCommentPartsVars.serializer)
      ..add(GCommitAuthor.serializer)
      ..add(GCommitContributionOrder.serializer)
      ..add(GCommitContributionOrderField.serializer)
      ..add(GCommitsData.serializer)
      ..add(GCommitsData_repository.serializer)
      ..add(GCommitsData_repository_defaultBranchRef.serializer)
      ..add(
          GCommitsData_repository_defaultBranchRef_target__asCommit.serializer)
      ..add(GCommitsData_repository_defaultBranchRef_target__asCommit_history
          .serializer)
      ..add(
          GCommitsData_repository_defaultBranchRef_target__asCommit_history_nodes
              .serializer)
      ..add(
          GCommitsData_repository_defaultBranchRef_target__asCommit_history_nodes_author
              .serializer)
      ..add(
          GCommitsData_repository_defaultBranchRef_target__asCommit_history_nodes_author_user
              .serializer)
      ..add(
          GCommitsData_repository_defaultBranchRef_target__asCommit_history_nodes_status
              .serializer)
      ..add(
          GCommitsData_repository_defaultBranchRef_target__asCommit_history_pageInfo
              .serializer)
      ..add(GCommitsData_repository_defaultBranchRef_target__base.serializer)
      ..add(GCommitsData_repository_ref.serializer)
      ..add(GCommitsData_repository_ref_target__asCommit.serializer)
      ..add(GCommitsData_repository_ref_target__asCommit_history.serializer)
      ..add(
          GCommitsData_repository_ref_target__asCommit_history_nodes.serializer)
      ..add(GCommitsData_repository_ref_target__asCommit_history_nodes_author
          .serializer)
      ..add(
          GCommitsData_repository_ref_target__asCommit_history_nodes_author_user
              .serializer)
      ..add(GCommitsData_repository_ref_target__asCommit_history_nodes_status
          .serializer)
      ..add(GCommitsData_repository_ref_target__asCommit_history_pageInfo
          .serializer)
      ..add(GCommitsData_repository_ref_target__base.serializer)
      ..add(GCommitsRefCommitData.serializer)
      ..add(GCommitsRefCommitData_history.serializer)
      ..add(GCommitsRefCommitData_history_nodes.serializer)
      ..add(GCommitsRefCommitData_history_nodes_author.serializer)
      ..add(GCommitsRefCommitData_history_nodes_author_user.serializer)
      ..add(GCommitsRefCommitData_history_nodes_status.serializer)
      ..add(GCommitsRefCommitData_history_pageInfo.serializer)
      ..add(GCommitsRefCommitReq.serializer)
      ..add(GCommitsRefCommitVars.serializer)
      ..add(GCommitsRefData.serializer)
      ..add(GCommitsRefData_target__asCommit.serializer)
      ..add(GCommitsRefData_target__asCommit_history.serializer)
      ..add(GCommitsRefData_target__asCommit_history_nodes.serializer)
      ..add(GCommitsRefData_target__asCommit_history_nodes_author.serializer)
      ..add(
          GCommitsRefData_target__asCommit_history_nodes_author_user.serializer)
      ..add(GCommitsRefData_target__asCommit_history_nodes_status.serializer)
      ..add(GCommitsRefData_target__asCommit_history_pageInfo.serializer)
      ..add(GCommitsRefData_target__base.serializer)
      ..add(GCommitsRefReq.serializer)
      ..add(GCommitsRefVars.serializer)
      ..add(GCommitsReq.serializer)
      ..add(GCommitsVars.serializer)
      ..add(GContributionOrder.serializer)
      ..add(GConvertProjectCardNoteToIssueInput.serializer)
      ..add(GCreateBranchProtectionRuleInput.serializer)
      ..add(GCreateCheckRunInput.serializer)
      ..add(GCreateCheckSuiteInput.serializer)
      ..add(GCreateEnterpriseOrganizationInput.serializer)
      ..add(GCreateIpAllowListEntryInput.serializer)
      ..add(GCreateIssueInput.serializer)
      ..add(GCreateProjectInput.serializer)
      ..add(GCreatePullRequestInput.serializer)
      ..add(GCreateRefInput.serializer)
      ..add(GCreateRepositoryInput.serializer)
      ..add(GCreateTeamDiscussionCommentInput.serializer)
      ..add(GCreateTeamDiscussionInput.serializer)
      ..add(GCrossReferencedEventPartsData.serializer)
      ..add(GCrossReferencedEventPartsData_actor.serializer)
      ..add(GCrossReferencedEventPartsData_source__asIssue.serializer)
      ..add(
          GCrossReferencedEventPartsData_source__asIssue_repository.serializer)
      ..add(GCrossReferencedEventPartsData_source__asIssue_repository_owner
          .serializer)
      ..add(GCrossReferencedEventPartsData_source__asPullRequest.serializer)
      ..add(GCrossReferencedEventPartsData_source__asPullRequest_repository
          .serializer)
      ..add(
          GCrossReferencedEventPartsData_source__asPullRequest_repository_owner
              .serializer)
      ..add(GCrossReferencedEventPartsData_source__base.serializer)
      ..add(GCrossReferencedEventPartsReq.serializer)
      ..add(GCrossReferencedEventPartsVars.serializer)
      ..add(GDate.serializer)
      ..add(GDeclineTopicSuggestionInput.serializer)
      ..add(GDefaultRepositoryPermissionField.serializer)
      ..add(GDeleteBranchProtectionRuleInput.serializer)
      ..add(GDeleteDeploymentInput.serializer)
      ..add(GDeleteIpAllowListEntryInput.serializer)
      ..add(GDeleteIssueCommentInput.serializer)
      ..add(GDeleteIssueInput.serializer)
      ..add(GDeleteProjectCardInput.serializer)
      ..add(GDeleteProjectColumnInput.serializer)
      ..add(GDeleteProjectInput.serializer)
      ..add(GDeletePullRequestReviewCommentInput.serializer)
      ..add(GDeletePullRequestReviewInput.serializer)
      ..add(GDeleteRefInput.serializer)
      ..add(GDeleteTeamDiscussionCommentInput.serializer)
      ..add(GDeleteTeamDiscussionInput.serializer)
      ..add(GDemilestonedEventPartsData.serializer)
      ..add(GDemilestonedEventPartsData_actor.serializer)
      ..add(GDemilestonedEventPartsReq.serializer)
      ..add(GDemilestonedEventPartsVars.serializer)
      ..add(GDeployedEventPartsData.serializer)
      ..add(GDeployedEventPartsData_actor.serializer)
      ..add(GDeployedEventPartsData_pullRequest.serializer)
      ..add(GDeployedEventPartsData_pullRequest_headRef.serializer)
      ..add(GDeployedEventPartsReq.serializer)
      ..add(GDeployedEventPartsVars.serializer)
      ..add(GDeploymentEnvironmentChangedEventPartsData.serializer)
      ..add(GDeploymentEnvironmentChangedEventPartsData_actor.serializer)
      ..add(GDeploymentEnvironmentChangedEventPartsData_deploymentStatus
          .serializer)
      ..add(
          GDeploymentEnvironmentChangedEventPartsData_deploymentStatus_deployment
              .serializer)
      ..add(GDeploymentEnvironmentChangedEventPartsReq.serializer)
      ..add(GDeploymentEnvironmentChangedEventPartsVars.serializer)
      ..add(GDeploymentOrder.serializer)
      ..add(GDeploymentOrderField.serializer)
      ..add(GDeploymentState.serializer)
      ..add(GDeploymentStatusState.serializer)
      ..add(GDiffSide.serializer)
      ..add(GDismissPullRequestReviewInput.serializer)
      ..add(GDraftPullRequestReviewComment.serializer)
      ..add(GDraftPullRequestReviewThread.serializer)
      ..add(GEnterpriseAdministratorInvitationOrder.serializer)
      ..add(GEnterpriseAdministratorInvitationOrderField.serializer)
      ..add(GEnterpriseAdministratorRole.serializer)
      ..add(GEnterpriseDefaultRepositoryPermissionSettingValue.serializer)
      ..add(GEnterpriseEnabledDisabledSettingValue.serializer)
      ..add(GEnterpriseEnabledSettingValue.serializer)
      ..add(GEnterpriseMemberOrder.serializer)
      ..add(GEnterpriseMemberOrderField.serializer)
      ..add(GEnterpriseMembersCanCreateRepositoriesSettingValue.serializer)
      ..add(GEnterpriseMembersCanMakePurchasesSettingValue.serializer)
      ..add(GEnterpriseServerInstallationOrder.serializer)
      ..add(GEnterpriseServerInstallationOrderField.serializer)
      ..add(GEnterpriseServerUserAccountEmailOrder.serializer)
      ..add(GEnterpriseServerUserAccountEmailOrderField.serializer)
      ..add(GEnterpriseServerUserAccountOrder.serializer)
      ..add(GEnterpriseServerUserAccountOrderField.serializer)
      ..add(GEnterpriseServerUserAccountsUploadOrder.serializer)
      ..add(GEnterpriseServerUserAccountsUploadOrderField.serializer)
      ..add(GEnterpriseServerUserAccountsUploadSyncState.serializer)
      ..add(GEnterpriseUserAccountMembershipRole.serializer)
      ..add(GEnterpriseUserDeployment.serializer)
      ..add(GFileViewedState.serializer)
      ..add(GFollowUserInput.serializer)
      ..add(GFollowersData.serializer)
      ..add(GFollowersData_user.serializer)
      ..add(GFollowersData_user_followers.serializer)
      ..add(GFollowersData_user_followers_nodes.serializer)
      ..add(GFollowersData_user_followers_pageInfo.serializer)
      ..add(GFollowersReq.serializer)
      ..add(GFollowersVars.serializer)
      ..add(GFollowingData.serializer)
      ..add(GFollowingData_user.serializer)
      ..add(GFollowingData_user_following.serializer)
      ..add(GFollowingData_user_following_nodes.serializer)
      ..add(GFollowingData_user_following_pageInfo.serializer)
      ..add(GFollowingReq.serializer)
      ..add(GFollowingVars.serializer)
      ..add(GFundingPlatform.serializer)
      ..add(GGistData.serializer)
      ..add(GGistData_user.serializer)
      ..add(GGistData_user_gist.serializer)
      ..add(GGistData_user_gist_files.serializer)
      ..add(GGistData_user_gist_files_language.serializer)
      ..add(GGistOrder.serializer)
      ..add(GGistOrderField.serializer)
      ..add(GGistPrivacy.serializer)
      ..add(GGistReq.serializer)
      ..add(GGistVars.serializer)
      ..add(GGistsData.serializer)
      ..add(GGistsData_user.serializer)
      ..add(GGistsData_user_gists.serializer)
      ..add(GGistsData_user_gists_nodes.serializer)
      ..add(GGistsData_user_gists_nodes_files.serializer)
      ..add(GGistsData_user_gists_nodes_files_language.serializer)
      ..add(GGistsData_user_gists_nodes_owner.serializer)
      ..add(GGistsData_user_gists_pageInfo.serializer)
      ..add(GGistsReq.serializer)
      ..add(GGistsVars.serializer)
      ..add(GGitSSHRemote.serializer)
      ..add(GGitSignatureState.serializer)
      ..add(GGitTimestamp.serializer)
      ..add(GHTML.serializer)
      ..add(GHeadRefDeletedEventPartsData.serializer)
      ..add(GHeadRefDeletedEventPartsData_actor.serializer)
      ..add(GHeadRefDeletedEventPartsReq.serializer)
      ..add(GHeadRefDeletedEventPartsVars.serializer)
      ..add(GHeadRefForcePushedEventPartsData.serializer)
      ..add(GHeadRefForcePushedEventPartsData_actor.serializer)
      ..add(GHeadRefForcePushedEventPartsData_afterCommit.serializer)
      ..add(GHeadRefForcePushedEventPartsData_beforeCommit.serializer)
      ..add(GHeadRefForcePushedEventPartsData_pullRequest.serializer)
      ..add(GHeadRefForcePushedEventPartsReq.serializer)
      ..add(GHeadRefForcePushedEventPartsVars.serializer)
      ..add(GHeadRefRestoredEventPartsData.serializer)
      ..add(GHeadRefRestoredEventPartsData_actor.serializer)
      ..add(GHeadRefRestoredEventPartsData_pullRequest.serializer)
      ..add(GHeadRefRestoredEventPartsReq.serializer)
      ..add(GHeadRefRestoredEventPartsVars.serializer)
      ..add(GIdentityProviderConfigurationState.serializer)
      ..add(GInviteEnterpriseAdminInput.serializer)
      ..add(GIpAllowListEnabledSettingValue.serializer)
      ..add(GIpAllowListEntryOrder.serializer)
      ..add(GIpAllowListEntryOrderField.serializer)
      ..add(GIssueCommentOrder.serializer)
      ..add(GIssueCommentOrderField.serializer)
      ..add(GIssueData.serializer)
      ..add(GIssueData_repository.serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue.serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_CONFUSED.serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue_EYES.serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue_HEART.serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue_HOORAY.serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue_LAUGH.serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue_ROCKET.serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue_THUMBS_DOWN
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue_THUMBS_UP
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue_author.serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asIssue_timelineItems
          .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asAssignedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asAssignedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asAssignedEvent_assignee__asBot
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asAssignedEvent_assignee__asMannequin
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asAssignedEvent_assignee__asOrganization
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asAssignedEvent_assignee__asUser
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asAssignedEvent_assignee__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asClosedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asClosedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asCrossReferencedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asCrossReferencedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asCrossReferencedEvent_source__asIssue
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asCrossReferencedEvent_source__asIssue_repository
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asCrossReferencedEvent_source__asIssue_repository_owner
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asCrossReferencedEvent_source__asPullRequest
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asCrossReferencedEvent_source__asPullRequest_repository
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asCrossReferencedEvent_source__asPullRequest_repository_owner
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asCrossReferencedEvent_source__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asDemilestonedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asDemilestonedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment_CONFUSED
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment_EYES
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment_HEART
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment_HOORAY
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment_LAUGH
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment_ROCKET
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment_THUMBS_DOWN
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment_THUMBS_UP
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asIssueComment_author
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asLabeledEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asLabeledEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asLabeledEvent_label
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asLockedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asLockedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asMentionedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asMentionedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asMilestonedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asMilestonedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asPinnedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asPinnedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asReferencedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asReferencedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asReferencedEvent_commit
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asReferencedEvent_commitRepository
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asReferencedEvent_commitRepository_owner
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asRenamedTitleEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asRenamedTitleEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asReopenedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asReopenedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asSubscribedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asSubscribedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asTransferredEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asTransferredEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asTransferredEvent_fromRepository
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asTransferredEvent_fromRepository_owner
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnassignedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnassignedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnassignedEvent_assignee__asBot
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnassignedEvent_assignee__asMannequin
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnassignedEvent_assignee__asOrganization
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnassignedEvent_assignee__asUser
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnassignedEvent_assignee__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnlabeledEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnlabeledEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnlabeledEvent_label
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnlockedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnlockedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnsubscribedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__asUnsubscribedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_pageInfo
              .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest.serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_CONFUSED
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_EYES
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_HEART
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_HOORAY
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_LAUGH
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_ROCKET
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_THUMBS_DOWN
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_THUMBS_UP
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_author
          .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__asPullRequest_commits
          .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asAssignedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asAssignedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asAssignedEvent_assignee__asBot
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asAssignedEvent_assignee__asMannequin
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asAssignedEvent_assignee__asOrganization
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asAssignedEvent_assignee__asUser
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asAssignedEvent_assignee__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asBaseRefForcePushedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asBaseRefForcePushedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asBaseRefForcePushedEvent_afterCommit
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asBaseRefForcePushedEvent_beforeCommit
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asBaseRefForcePushedEvent_pullRequest
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asBaseRefForcePushedEvent_pullRequest_baseRef
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asClosedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asClosedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asCrossReferencedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asCrossReferencedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asCrossReferencedEvent_source__asIssue
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asCrossReferencedEvent_source__asIssue_repository
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asCrossReferencedEvent_source__asIssue_repository_owner
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asCrossReferencedEvent_source__asPullRequest
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asCrossReferencedEvent_source__asPullRequest_repository
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asCrossReferencedEvent_source__asPullRequest_repository_owner
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asCrossReferencedEvent_source__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDemilestonedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDemilestonedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDeployedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDeployedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDeployedEvent_pullRequest
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDeployedEvent_pullRequest_headRef
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDeploymentEnvironmentChangedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDeploymentEnvironmentChangedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDeploymentEnvironmentChangedEvent_deploymentStatus
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asDeploymentEnvironmentChangedEvent_deploymentStatus_deployment
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefDeletedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefDeletedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefForcePushedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefForcePushedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefForcePushedEvent_afterCommit
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefForcePushedEvent_beforeCommit
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefForcePushedEvent_pullRequest
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefRestoredEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefRestoredEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asHeadRefRestoredEvent_pullRequest
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment_CONFUSED
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment_EYES
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment_HEART
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment_HOORAY
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment_LAUGH
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment_ROCKET
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment_THUMBS_DOWN
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment_THUMBS_UP
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asIssueComment_author
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asLabeledEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asLabeledEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asLabeledEvent_label
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asLockedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asLockedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asMentionedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asMentionedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asMergedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asMergedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asMergedEvent_commit
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asMilestonedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asMilestonedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPinnedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPinnedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestCommit
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestCommit_commit
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestCommit_commit_author
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestCommit_commit_author_user
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_author
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes_CONFUSED
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes_EYES
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes_HEART
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes_HOORAY
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes_LAUGH
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes_ROCKET
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes_THUMBS_DOWN
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes_THUMBS_UP
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes_author
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReferencedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReferencedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReferencedEvent_commit
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReferencedEvent_commitRepository
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReferencedEvent_commitRepository_owner
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asRenamedTitleEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asRenamedTitleEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReopenedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReopenedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewDismissedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewDismissedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewDismissedEvent_pullRequest
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewDismissedEvent_pullRequest_author
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewRequestRemovedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewRequestRemovedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewRequestRemovedEvent_requestedReviewer__asUser
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewRequestRemovedEvent_requestedReviewer__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewRequestedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewRequestedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewRequestedEvent_requestedReviewer__asUser
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewRequestedEvent_requestedReviewer__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asSubscribedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asSubscribedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asTransferredEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asTransferredEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asTransferredEvent_fromRepository
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asTransferredEvent_fromRepository_owner
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnassignedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnassignedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnassignedEvent_assignee__asBot
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnassignedEvent_assignee__asMannequin
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnassignedEvent_assignee__asOrganization
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnassignedEvent_assignee__asUser
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnassignedEvent_assignee__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnlabeledEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnlabeledEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnlabeledEvent_label
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnlockedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnlockedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnsubscribedEvent
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asUnsubscribedEvent_actor
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__base
              .serializer)
      ..add(
          GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_pageInfo
              .serializer)
      ..add(GIssueData_repository_issueOrPullRequest__base.serializer)
      ..add(GIssueData_repository_owner.serializer)
      ..add(GIssueFilters.serializer)
      ..add(GIssueOrder.serializer)
      ..add(GIssueOrderField.serializer)
      ..add(GIssueReq.serializer)
      ..add(GIssueState.serializer)
      ..add(GIssueTimelineItemsItemType.serializer)
      ..add(GIssueVars.serializer)
      ..add(GIssuesData.serializer)
      ..add(GIssuesData_repository.serializer)
      ..add(GIssuesData_repository_issues.serializer)
      ..add(GIssuesData_repository_issues_nodes.serializer)
      ..add(GIssuesData_repository_issues_nodes_author.serializer)
      ..add(GIssuesData_repository_issues_nodes_comments.serializer)
      ..add(GIssuesData_repository_issues_nodes_labels.serializer)
      ..add(GIssuesData_repository_issues_nodes_labels_nodes.serializer)
      ..add(GIssuesData_repository_issues_pageInfo.serializer)
      ..add(GIssuesReq.serializer)
      ..add(GIssuesVars.serializer)
      ..add(GLabelOrder.serializer)
      ..add(GLabelOrderField.serializer)
      ..add(GLabeledEventPartsData.serializer)
      ..add(GLabeledEventPartsData_actor.serializer)
      ..add(GLabeledEventPartsData_label.serializer)
      ..add(GLabeledEventPartsReq.serializer)
      ..add(GLabeledEventPartsVars.serializer)
      ..add(GLanguageOrder.serializer)
      ..add(GLanguageOrderField.serializer)
      ..add(GLinkRepositoryToProjectInput.serializer)
      ..add(GLockLockableInput.serializer)
      ..add(GLockReason.serializer)
      ..add(GLockedEventPartsData.serializer)
      ..add(GLockedEventPartsData_actor.serializer)
      ..add(GLockedEventPartsReq.serializer)
      ..add(GLockedEventPartsVars.serializer)
      ..add(GMarkFileAsViewedInput.serializer)
      ..add(GMarkPullRequestReadyForReviewInput.serializer)
      ..add(GMembersData.serializer)
      ..add(GMembersData_organization.serializer)
      ..add(GMembersData_organization_membersWithRole.serializer)
      ..add(GMembersData_organization_membersWithRole_nodes.serializer)
      ..add(GMembersData_organization_membersWithRole_pageInfo.serializer)
      ..add(GMembersReq.serializer)
      ..add(GMembersVars.serializer)
      ..add(GMentionedEventPartsData.serializer)
      ..add(GMentionedEventPartsData_actor.serializer)
      ..add(GMentionedEventPartsReq.serializer)
      ..add(GMentionedEventPartsVars.serializer)
      ..add(GMergeBranchInput.serializer)
      ..add(GMergePullRequestInput.serializer)
      ..add(GMergeableState.serializer)
      ..add(GMergedEventPartsData.serializer)
      ..add(GMergedEventPartsData_actor.serializer)
      ..add(GMergedEventPartsData_commit.serializer)
      ..add(GMergedEventPartsReq.serializer)
      ..add(GMergedEventPartsVars.serializer)
      ..add(GMilestoneOrder.serializer)
      ..add(GMilestoneOrderField.serializer)
      ..add(GMilestoneState.serializer)
      ..add(GMilestonedEventPartsData.serializer)
      ..add(GMilestonedEventPartsData_actor.serializer)
      ..add(GMilestonedEventPartsReq.serializer)
      ..add(GMilestonedEventPartsVars.serializer)
      ..add(GMinimizeCommentInput.serializer)
      ..add(GMoveProjectCardInput.serializer)
      ..add(GMoveProjectColumnInput.serializer)
      ..add(GOauthApplicationCreateAuditEntryState.serializer)
      ..add(GOperationType.serializer)
      ..add(GOrderDirection.serializer)
      ..add(GOrgAddMemberAuditEntryPermission.serializer)
      ..add(GOrgCreateAuditEntryBillingPlan.serializer)
      ..add(GOrgRemoveBillingManagerAuditEntryReason.serializer)
      ..add(GOrgRemoveMemberAuditEntryMembershipType.serializer)
      ..add(GOrgRemoveMemberAuditEntryReason.serializer)
      ..add(GOrgRemoveOutsideCollaboratorAuditEntryMembershipType.serializer)
      ..add(GOrgRemoveOutsideCollaboratorAuditEntryReason.serializer)
      ..add(
          GOrgUpdateDefaultRepositoryPermissionAuditEntryPermission.serializer)
      ..add(GOrgUpdateMemberAuditEntryPermission.serializer)
      ..add(GOrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
          .serializer)
      ..add(GOrganizationInvitationRole.serializer)
      ..add(GOrganizationInvitationType.serializer)
      ..add(GOrganizationMemberRole.serializer)
      ..add(GOrganizationMembersCanCreateRepositoriesSettingValue.serializer)
      ..add(GOrganizationOrder.serializer)
      ..add(GOrganizationOrderField.serializer)
      ..add(GPackageFileOrder.serializer)
      ..add(GPackageFileOrderField.serializer)
      ..add(GPackageOrder.serializer)
      ..add(GPackageOrderField.serializer)
      ..add(GPackageType.serializer)
      ..add(GPackageVersionOrder.serializer)
      ..add(GPackageVersionOrderField.serializer)
      ..add(GPageInfoPartsData.serializer)
      ..add(GPageInfoPartsReq.serializer)
      ..add(GPageInfoPartsVars.serializer)
      ..add(GPinnableItemType.serializer)
      ..add(GPinnedEventPartsData.serializer)
      ..add(GPinnedEventPartsData_actor.serializer)
      ..add(GPinnedEventPartsReq.serializer)
      ..add(GPinnedEventPartsVars.serializer)
      ..add(GPreciseDateTime.serializer)
      ..add(GProjectCardArchivedState.serializer)
      ..add(GProjectCardState.serializer)
      ..add(GProjectColumnPurpose.serializer)
      ..add(GProjectOrder.serializer)
      ..add(GProjectOrderField.serializer)
      ..add(GProjectState.serializer)
      ..add(GProjectTemplate.serializer)
      ..add(GPullRequestCommitPartsData.serializer)
      ..add(GPullRequestCommitPartsData_commit.serializer)
      ..add(GPullRequestCommitPartsData_commit_author.serializer)
      ..add(GPullRequestCommitPartsData_commit_author_user.serializer)
      ..add(GPullRequestCommitPartsReq.serializer)
      ..add(GPullRequestCommitPartsVars.serializer)
      ..add(GPullRequestMergeMethod.serializer)
      ..add(GPullRequestOrder.serializer)
      ..add(GPullRequestOrderField.serializer)
      ..add(GPullRequestReviewCommentState.serializer)
      ..add(GPullRequestReviewDecision.serializer)
      ..add(GPullRequestReviewEvent.serializer)
      ..add(GPullRequestReviewPartsData.serializer)
      ..add(GPullRequestReviewPartsData_author.serializer)
      ..add(GPullRequestReviewPartsData_comments.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes_CONFUSED.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes_EYES.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes_HEART.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes_HOORAY.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes_LAUGH.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes_ROCKET.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes_THUMBS_DOWN.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes_THUMBS_UP.serializer)
      ..add(GPullRequestReviewPartsData_comments_nodes_author.serializer)
      ..add(GPullRequestReviewPartsReq.serializer)
      ..add(GPullRequestReviewPartsVars.serializer)
      ..add(GPullRequestReviewState.serializer)
      ..add(GPullRequestState.serializer)
      ..add(GPullRequestTimelineItemsItemType.serializer)
      ..add(GPullRequestUpdateState.serializer)
      ..add(GPullsData.serializer)
      ..add(GPullsData_repository.serializer)
      ..add(GPullsData_repository_pullRequests.serializer)
      ..add(GPullsData_repository_pullRequests_nodes.serializer)
      ..add(GPullsData_repository_pullRequests_nodes_author.serializer)
      ..add(GPullsData_repository_pullRequests_nodes_comments.serializer)
      ..add(GPullsData_repository_pullRequests_nodes_labels.serializer)
      ..add(GPullsData_repository_pullRequests_nodes_labels_nodes.serializer)
      ..add(GPullsData_repository_pullRequests_pageInfo.serializer)
      ..add(GPullsReq.serializer)
      ..add(GPullsVars.serializer)
      ..add(GReactablePartsData.serializer)
      ..add(GReactablePartsData_CONFUSED.serializer)
      ..add(GReactablePartsData_EYES.serializer)
      ..add(GReactablePartsData_HEART.serializer)
      ..add(GReactablePartsData_HOORAY.serializer)
      ..add(GReactablePartsData_LAUGH.serializer)
      ..add(GReactablePartsData_ROCKET.serializer)
      ..add(GReactablePartsData_THUMBS_DOWN.serializer)
      ..add(GReactablePartsData_THUMBS_UP.serializer)
      ..add(GReactablePartsReq.serializer)
      ..add(GReactablePartsVars.serializer)
      ..add(GReactionConnectionPartsData.serializer)
      ..add(GReactionConnectionPartsReq.serializer)
      ..add(GReactionConnectionPartsVars.serializer)
      ..add(GReactionContent.serializer)
      ..add(GReactionOrder.serializer)
      ..add(GReactionOrderField.serializer)
      ..add(GRefOrder.serializer)
      ..add(GRefOrderField.serializer)
      ..add(GReferencedEventPartsData.serializer)
      ..add(GReferencedEventPartsData_actor.serializer)
      ..add(GReferencedEventPartsData_commit.serializer)
      ..add(GReferencedEventPartsData_commitRepository.serializer)
      ..add(GReferencedEventPartsData_commitRepository_owner.serializer)
      ..add(GReferencedEventPartsReq.serializer)
      ..add(GReferencedEventPartsVars.serializer)
      ..add(GRegenerateEnterpriseIdentityProviderRecoveryCodesInput.serializer)
      ..add(GReleaseOrder.serializer)
      ..add(GReleaseOrderField.serializer)
      ..add(GReleasesData.serializer)
      ..add(GReleasesData_repository.serializer)
      ..add(GReleasesData_repository_releases.serializer)
      ..add(GReleasesData_repository_releases_nodes.serializer)
      ..add(GReleasesData_repository_releases_nodes_author.serializer)
      ..add(GReleasesData_repository_releases_nodes_releaseAssets.serializer)
      ..add(GReleasesData_repository_releases_nodes_releaseAssets_nodes
          .serializer)
      ..add(GReleasesData_repository_releases_pageInfo.serializer)
      ..add(GReleasesReq.serializer)
      ..add(GReleasesVars.serializer)
      ..add(GRemoveAssigneesFromAssignableInput.serializer)
      ..add(GRemoveEnterpriseAdminInput.serializer)
      ..add(GRemoveEnterpriseIdentityProviderInput.serializer)
      ..add(GRemoveEnterpriseOrganizationInput.serializer)
      ..add(GRemoveLabelsFromLabelableInput.serializer)
      ..add(GRemoveOutsideCollaboratorInput.serializer)
      ..add(GRemoveReactionInput.serializer)
      ..add(GRemoveStarInput.serializer)
      ..add(GRenamedTitleEventPartsData.serializer)
      ..add(GRenamedTitleEventPartsData_actor.serializer)
      ..add(GRenamedTitleEventPartsReq.serializer)
      ..add(GRenamedTitleEventPartsVars.serializer)
      ..add(GReopenIssueInput.serializer)
      ..add(GReopenPullRequestInput.serializer)
      ..add(GReopenedEventPartsData.serializer)
      ..add(GReopenedEventPartsData_actor.serializer)
      ..add(GReopenedEventPartsReq.serializer)
      ..add(GReopenedEventPartsVars.serializer)
      ..add(GRepoAccessAuditEntryVisibility.serializer)
      ..add(GRepoAddMemberAuditEntryVisibility.serializer)
      ..add(GRepoArchivedAuditEntryVisibility.serializer)
      ..add(GRepoChangeMergeSettingAuditEntryMergeType.serializer)
      ..add(GRepoCommitData.serializer)
      ..add(GRepoCommitData_history.serializer)
      ..add(GRepoCommitReq.serializer)
      ..add(GRepoCommitVars.serializer)
      ..add(GRepoCreateAuditEntryVisibility.serializer)
      ..add(GRepoData.serializer)
      ..add(GRepoData_repository.serializer)
      ..add(GRepoData_repository_defaultBranchRef.serializer)
      ..add(GRepoData_repository_defaultBranchRef_target__asCommit.serializer)
      ..add(GRepoData_repository_defaultBranchRef_target__asCommit_history
          .serializer)
      ..add(GRepoData_repository_defaultBranchRef_target__base.serializer)
      ..add(GRepoData_repository_forks.serializer)
      ..add(GRepoData_repository_issues.serializer)
      ..add(GRepoData_repository_languages.serializer)
      ..add(GRepoData_repository_languages_edges.serializer)
      ..add(GRepoData_repository_languages_edges_node.serializer)
      ..add(GRepoData_repository_licenseInfo.serializer)
      ..add(GRepoData_repository_owner.serializer)
      ..add(GRepoData_repository_primaryLanguage.serializer)
      ..add(GRepoData_repository_projects.serializer)
      ..add(GRepoData_repository_pullRequests.serializer)
      ..add(GRepoData_repository_ref.serializer)
      ..add(GRepoData_repository_ref_target__asCommit.serializer)
      ..add(GRepoData_repository_ref_target__asCommit_history.serializer)
      ..add(GRepoData_repository_ref_target__base.serializer)
      ..add(GRepoData_repository_refs.serializer)
      ..add(GRepoData_repository_refs_nodes.serializer)
      ..add(GRepoData_repository_releases.serializer)
      ..add(GRepoData_repository_repositoryTopics.serializer)
      ..add(GRepoData_repository_repositoryTopics_nodes.serializer)
      ..add(GRepoData_repository_repositoryTopics_nodes_topic.serializer)
      ..add(GRepoData_repository_stargazers.serializer)
      ..add(GRepoData_repository_watchers.serializer)
      ..add(GRepoDestroyAuditEntryVisibility.serializer)
      ..add(GRepoItemData.serializer)
      ..add(GRepoItemData_forks.serializer)
      ..add(GRepoItemData_owner.serializer)
      ..add(GRepoItemData_primaryLanguage.serializer)
      ..add(GRepoItemData_stargazers.serializer)
      ..add(GRepoItemReq.serializer)
      ..add(GRepoItemVars.serializer)
      ..add(GRepoRefData.serializer)
      ..add(GRepoRefData_target__asCommit.serializer)
      ..add(GRepoRefData_target__asCommit_history.serializer)
      ..add(GRepoRefData_target__base.serializer)
      ..add(GRepoRefReq.serializer)
      ..add(GRepoRefVars.serializer)
      ..add(GRepoRemoveMemberAuditEntryVisibility.serializer)
      ..add(GRepoReq.serializer)
      ..add(GRepoVars.serializer)
      ..add(GReportedContentClassifiers.serializer)
      ..add(GReposData.serializer)
      ..add(GReposData_user.serializer)
      ..add(GReposData_user_repositories.serializer)
      ..add(GReposData_user_repositories_nodes.serializer)
      ..add(GReposData_user_repositories_nodes_forks.serializer)
      ..add(GReposData_user_repositories_nodes_owner.serializer)
      ..add(GReposData_user_repositories_nodes_primaryLanguage.serializer)
      ..add(GReposData_user_repositories_nodes_stargazers.serializer)
      ..add(GReposData_user_repositories_pageInfo.serializer)
      ..add(GReposRepoItemData.serializer)
      ..add(GReposRepoItemData_forks.serializer)
      ..add(GReposRepoItemData_owner.serializer)
      ..add(GReposRepoItemData_primaryLanguage.serializer)
      ..add(GReposRepoItemData_stargazers.serializer)
      ..add(GReposRepoItemReq.serializer)
      ..add(GReposRepoItemVars.serializer)
      ..add(GReposReq.serializer)
      ..add(GReposVars.serializer)
      ..add(GRepositoryAffiliation.serializer)
      ..add(GRepositoryContributionType.serializer)
      ..add(GRepositoryInteractionLimit.serializer)
      ..add(GRepositoryInteractionLimitExpiry.serializer)
      ..add(GRepositoryInteractionLimitOrigin.serializer)
      ..add(GRepositoryInvitationOrder.serializer)
      ..add(GRepositoryInvitationOrderField.serializer)
      ..add(GRepositoryLockReason.serializer)
      ..add(GRepositoryOrder.serializer)
      ..add(GRepositoryOrderField.serializer)
      ..add(GRepositoryPermission.serializer)
      ..add(GRepositoryPrivacy.serializer)
      ..add(GRepositoryVisibility.serializer)
      ..add(GRequestReviewsInput.serializer)
      ..add(GRequestableCheckStatusState.serializer)
      ..add(GRerequestCheckSuiteInput.serializer)
      ..add(GResolveReviewThreadInput.serializer)
      ..add(GReviewDismissedEventPartsData.serializer)
      ..add(GReviewDismissedEventPartsData_actor.serializer)
      ..add(GReviewDismissedEventPartsData_pullRequest.serializer)
      ..add(GReviewDismissedEventPartsData_pullRequest_author.serializer)
      ..add(GReviewDismissedEventPartsReq.serializer)
      ..add(GReviewDismissedEventPartsVars.serializer)
      ..add(GReviewRequestRemovedEventPartsData.serializer)
      ..add(GReviewRequestRemovedEventPartsData_actor.serializer)
      ..add(GReviewRequestRemovedEventPartsData_requestedReviewer__asUser
          .serializer)
      ..add(GReviewRequestRemovedEventPartsData_requestedReviewer__base
          .serializer)
      ..add(GReviewRequestRemovedEventPartsReq.serializer)
      ..add(GReviewRequestRemovedEventPartsVars.serializer)
      ..add(GReviewRequestedEventPartsData.serializer)
      ..add(GReviewRequestedEventPartsData_actor.serializer)
      ..add(GReviewRequestedEventPartsData_requestedReviewer__asUser.serializer)
      ..add(GReviewRequestedEventPartsData_requestedReviewer__base.serializer)
      ..add(GReviewRequestedEventPartsReq.serializer)
      ..add(GReviewRequestedEventPartsVars.serializer)
      ..add(GSamlDigestAlgorithm.serializer)
      ..add(GSamlSignatureAlgorithm.serializer)
      ..add(GSavedReplyOrder.serializer)
      ..add(GSavedReplyOrderField.serializer)
      ..add(GSearchType.serializer)
      ..add(GSecurityAdvisoryEcosystem.serializer)
      ..add(GSecurityAdvisoryIdentifierFilter.serializer)
      ..add(GSecurityAdvisoryIdentifierType.serializer)
      ..add(GSecurityAdvisoryOrder.serializer)
      ..add(GSecurityAdvisoryOrderField.serializer)
      ..add(GSecurityAdvisorySeverity.serializer)
      ..add(GSecurityVulnerabilityOrder.serializer)
      ..add(GSecurityVulnerabilityOrderField.serializer)
      ..add(GSetEnterpriseIdentityProviderInput.serializer)
      ..add(GSetOrganizationInteractionLimitInput.serializer)
      ..add(GSetRepositoryInteractionLimitInput.serializer)
      ..add(GSetUserInteractionLimitInput.serializer)
      ..add(GSponsorsTierOrder.serializer)
      ..add(GSponsorsTierOrderField.serializer)
      ..add(GSponsorshipOrder.serializer)
      ..add(GSponsorshipOrderField.serializer)
      ..add(GSponsorshipPrivacy.serializer)
      ..add(GStarOrder.serializer)
      ..add(GStarOrderField.serializer)
      ..add(GStargazersData.serializer)
      ..add(GStargazersData_repository.serializer)
      ..add(GStargazersData_repository_stargazers.serializer)
      ..add(GStargazersData_repository_stargazers_nodes.serializer)
      ..add(GStargazersData_repository_stargazers_pageInfo.serializer)
      ..add(GStargazersReq.serializer)
      ..add(GStargazersVars.serializer)
      ..add(GStarsData.serializer)
      ..add(GStarsData_user.serializer)
      ..add(GStarsData_user_starredRepositories.serializer)
      ..add(GStarsData_user_starredRepositories_nodes.serializer)
      ..add(GStarsData_user_starredRepositories_nodes_forks.serializer)
      ..add(GStarsData_user_starredRepositories_nodes_owner.serializer)
      ..add(
          GStarsData_user_starredRepositories_nodes_primaryLanguage.serializer)
      ..add(GStarsData_user_starredRepositories_nodes_stargazers.serializer)
      ..add(GStarsData_user_starredRepositories_pageInfo.serializer)
      ..add(GStarsReq.serializer)
      ..add(GStarsVars.serializer)
      ..add(GStatusState.serializer)
      ..add(GSubmitPullRequestReviewInput.serializer)
      ..add(GSubscribedEventPartsData.serializer)
      ..add(GSubscribedEventPartsData_actor.serializer)
      ..add(GSubscribedEventPartsReq.serializer)
      ..add(GSubscribedEventPartsVars.serializer)
      ..add(GSubscriptionState.serializer)
      ..add(GTeamDiscussionCommentOrder.serializer)
      ..add(GTeamDiscussionCommentOrderField.serializer)
      ..add(GTeamDiscussionOrder.serializer)
      ..add(GTeamDiscussionOrderField.serializer)
      ..add(GTeamMemberOrder.serializer)
      ..add(GTeamMemberOrderField.serializer)
      ..add(GTeamMemberRole.serializer)
      ..add(GTeamMembershipType.serializer)
      ..add(GTeamOrder.serializer)
      ..add(GTeamOrderField.serializer)
      ..add(GTeamPrivacy.serializer)
      ..add(GTeamRepositoryOrder.serializer)
      ..add(GTeamRepositoryOrderField.serializer)
      ..add(GTeamRole.serializer)
      ..add(GTopicSuggestionDeclineReason.serializer)
      ..add(GTransferIssueInput.serializer)
      ..add(GTransferredEventPartsData.serializer)
      ..add(GTransferredEventPartsData_actor.serializer)
      ..add(GTransferredEventPartsData_fromRepository.serializer)
      ..add(GTransferredEventPartsData_fromRepository_owner.serializer)
      ..add(GTransferredEventPartsReq.serializer)
      ..add(GTransferredEventPartsVars.serializer)
      ..add(GUnarchiveRepositoryInput.serializer)
      ..add(GUnassignedEventPartsData.serializer)
      ..add(GUnassignedEventPartsData_actor.serializer)
      ..add(GUnassignedEventPartsData_assignee__asBot.serializer)
      ..add(GUnassignedEventPartsData_assignee__asMannequin.serializer)
      ..add(GUnassignedEventPartsData_assignee__asOrganization.serializer)
      ..add(GUnassignedEventPartsData_assignee__asUser.serializer)
      ..add(GUnassignedEventPartsData_assignee__base.serializer)
      ..add(GUnassignedEventPartsReq.serializer)
      ..add(GUnassignedEventPartsVars.serializer)
      ..add(GUnfollowUserInput.serializer)
      ..add(GUnlabeledEventPartsData.serializer)
      ..add(GUnlabeledEventPartsData_actor.serializer)
      ..add(GUnlabeledEventPartsData_label.serializer)
      ..add(GUnlabeledEventPartsReq.serializer)
      ..add(GUnlabeledEventPartsVars.serializer)
      ..add(GUnlinkRepositoryFromProjectInput.serializer)
      ..add(GUnlockLockableInput.serializer)
      ..add(GUnlockedEventPartsData.serializer)
      ..add(GUnlockedEventPartsData_actor.serializer)
      ..add(GUnlockedEventPartsReq.serializer)
      ..add(GUnlockedEventPartsVars.serializer)
      ..add(GUnmarkFileAsViewedInput.serializer)
      ..add(GUnmarkIssueAsDuplicateInput.serializer)
      ..add(GUnminimizeCommentInput.serializer)
      ..add(GUnresolveReviewThreadInput.serializer)
      ..add(GUnsubscribedEventPartsData.serializer)
      ..add(GUnsubscribedEventPartsData_actor.serializer)
      ..add(GUnsubscribedEventPartsReq.serializer)
      ..add(GUnsubscribedEventPartsVars.serializer)
      ..add(GUpdateBranchProtectionRuleInput.serializer)
      ..add(GUpdateCheckRunInput.serializer)
      ..add(GUpdateCheckSuitePreferencesInput.serializer)
      ..add(GUpdateEnterpriseAdministratorRoleInput.serializer)
      ..add(
          GUpdateEnterpriseAllowPrivateRepositoryForkingSettingInput.serializer)
      ..add(GUpdateEnterpriseDefaultRepositoryPermissionSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput
          .serializer)
      ..add(
          GUpdateEnterpriseMembersCanCreateRepositoriesSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanDeleteIssuesSettingInput.serializer)
      ..add(
          GUpdateEnterpriseMembersCanDeleteRepositoriesSettingInput.serializer)
      ..add(
          GUpdateEnterpriseMembersCanInviteCollaboratorsSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanMakePurchasesSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanUpdateProtectedBranchesSettingInput
          .serializer)
      ..add(GUpdateEnterpriseMembersCanViewDependencyInsightsSettingInput
          .serializer)
      ..add(GUpdateEnterpriseOrganizationProjectsSettingInput.serializer)
      ..add(GUpdateEnterpriseProfileInput.serializer)
      ..add(GUpdateEnterpriseRepositoryProjectsSettingInput.serializer)
      ..add(GUpdateEnterpriseTeamDiscussionsSettingInput.serializer)
      ..add(GUpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput
          .serializer)
      ..add(GUpdateIpAllowListEnabledSettingInput.serializer)
      ..add(GUpdateIpAllowListEntryInput.serializer)
      ..add(GUpdateIssueCommentInput.serializer)
      ..add(GUpdateIssueInput.serializer)
      ..add(GUpdateProjectCardInput.serializer)
      ..add(GUpdateProjectColumnInput.serializer)
      ..add(GUpdateProjectInput.serializer)
      ..add(GUpdatePullRequestInput.serializer)
      ..add(GUpdatePullRequestReviewCommentInput.serializer)
      ..add(GUpdatePullRequestReviewInput.serializer)
      ..add(GUpdateRefInput.serializer)
      ..add(GUpdateRepositoryInput.serializer)
      ..add(GUpdateSubscriptionInput.serializer)
      ..add(GUpdateTeamDiscussionCommentInput.serializer)
      ..add(GUpdateTeamDiscussionInput.serializer)
      ..add(GUpdateTopicsInput.serializer)
      ..add(GUserBlockDuration.serializer)
      ..add(GUserData.serializer)
      ..add(GUserData_repositoryOwner__asOrganization.serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_membersWithRole.serializer)
      ..add(GUserData_repositoryOwner__asOrganization_pinnableItems.serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnableItems_nodes__asRepository
              .serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnableItems_nodes__asRepository_forks
              .serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnableItems_nodes__asRepository_owner
              .serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnableItems_nodes__asRepository_primaryLanguage
              .serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnableItems_nodes__asRepository_stargazers
              .serializer)
      ..add(GUserData_repositoryOwner__asOrganization_pinnableItems_nodes__base
          .serializer)
      ..add(GUserData_repositoryOwner__asOrganization_pinnedItems.serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnedItems_nodes__asRepository
              .serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnedItems_nodes__asRepository_forks
              .serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnedItems_nodes__asRepository_owner
              .serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnedItems_nodes__asRepository_primaryLanguage
              .serializer)
      ..add(
          GUserData_repositoryOwner__asOrganization_pinnedItems_nodes__asRepository_stargazers
              .serializer)
      ..add(GUserData_repositoryOwner__asOrganization_pinnedItems_nodes__base
          .serializer)
      ..add(GUserData_repositoryOwner__asUser.serializer)
      ..add(
          GUserData_repositoryOwner__asUser_contributionsCollection.serializer)
      ..add(
          GUserData_repositoryOwner__asUser_contributionsCollection_contributionCalendar
              .serializer)
      ..add(
          GUserData_repositoryOwner__asUser_contributionsCollection_contributionCalendar_weeks
              .serializer)
      ..add(
          GUserData_repositoryOwner__asUser_contributionsCollection_contributionCalendar_weeks_contributionDays
              .serializer)
      ..add(GUserData_repositoryOwner__asUser_followers.serializer)
      ..add(GUserData_repositoryOwner__asUser_following.serializer)
      ..add(GUserData_repositoryOwner__asUser_pinnedItems.serializer)
      ..add(GUserData_repositoryOwner__asUser_pinnedItems_nodes__asRepository
          .serializer)
      ..add(
          GUserData_repositoryOwner__asUser_pinnedItems_nodes__asRepository_forks
              .serializer)
      ..add(
          GUserData_repositoryOwner__asUser_pinnedItems_nodes__asRepository_owner
              .serializer)
      ..add(
          GUserData_repositoryOwner__asUser_pinnedItems_nodes__asRepository_primaryLanguage
              .serializer)
      ..add(
          GUserData_repositoryOwner__asUser_pinnedItems_nodes__asRepository_stargazers
              .serializer)
      ..add(
          GUserData_repositoryOwner__asUser_pinnedItems_nodes__base.serializer)
      ..add(GUserData_repositoryOwner__asUser_repositories.serializer)
      ..add(GUserData_repositoryOwner__asUser_repositories_nodes.serializer)
      ..add(
          GUserData_repositoryOwner__asUser_repositories_nodes_forks.serializer)
      ..add(
          GUserData_repositoryOwner__asUser_repositories_nodes_owner.serializer)
      ..add(GUserData_repositoryOwner__asUser_repositories_nodes_primaryLanguage
          .serializer)
      ..add(GUserData_repositoryOwner__asUser_repositories_nodes_stargazers
          .serializer)
      ..add(GUserData_repositoryOwner__asUser_starredRepositories.serializer)
      ..add(GUserData_repositoryOwner__base.serializer)
      ..add(GUserItemData.serializer)
      ..add(GUserItemReq.serializer)
      ..add(GUserItemVars.serializer)
      ..add(GUserPartsData.serializer)
      ..add(GUserPartsData_contributionsCollection.serializer)
      ..add(GUserPartsData_contributionsCollection_contributionCalendar
          .serializer)
      ..add(GUserPartsData_contributionsCollection_contributionCalendar_weeks
          .serializer)
      ..add(
          GUserPartsData_contributionsCollection_contributionCalendar_weeks_contributionDays
              .serializer)
      ..add(GUserPartsData_followers.serializer)
      ..add(GUserPartsData_following.serializer)
      ..add(GUserPartsData_pinnedItems.serializer)
      ..add(GUserPartsData_pinnedItems_nodes__asRepository.serializer)
      ..add(GUserPartsData_pinnedItems_nodes__asRepository_forks.serializer)
      ..add(GUserPartsData_pinnedItems_nodes__asRepository_owner.serializer)
      ..add(GUserPartsData_pinnedItems_nodes__asRepository_primaryLanguage
          .serializer)
      ..add(
          GUserPartsData_pinnedItems_nodes__asRepository_stargazers.serializer)
      ..add(GUserPartsData_pinnedItems_nodes__base.serializer)
      ..add(GUserPartsData_repositories.serializer)
      ..add(GUserPartsData_repositories_nodes.serializer)
      ..add(GUserPartsData_repositories_nodes_forks.serializer)
      ..add(GUserPartsData_repositories_nodes_owner.serializer)
      ..add(GUserPartsData_repositories_nodes_primaryLanguage.serializer)
      ..add(GUserPartsData_repositories_nodes_stargazers.serializer)
      ..add(GUserPartsData_starredRepositories.serializer)
      ..add(GUserPartsReq.serializer)
      ..add(GUserPartsVars.serializer)
      ..add(GUserReq.serializer)
      ..add(GUserStatusOrder.serializer)
      ..add(GUserStatusOrderField.serializer)
      ..add(GUserVars.serializer)
      ..add(GViewerData.serializer)
      ..add(GViewerData_viewer.serializer)
      ..add(GViewerData_viewer_contributionsCollection.serializer)
      ..add(GViewerData_viewer_contributionsCollection_contributionCalendar
          .serializer)
      ..add(
          GViewerData_viewer_contributionsCollection_contributionCalendar_weeks
              .serializer)
      ..add(
          GViewerData_viewer_contributionsCollection_contributionCalendar_weeks_contributionDays
              .serializer)
      ..add(GViewerData_viewer_followers.serializer)
      ..add(GViewerData_viewer_following.serializer)
      ..add(GViewerData_viewer_pinnedItems.serializer)
      ..add(GViewerData_viewer_pinnedItems_nodes__asRepository.serializer)
      ..add(GViewerData_viewer_pinnedItems_nodes__asRepository_forks.serializer)
      ..add(GViewerData_viewer_pinnedItems_nodes__asRepository_owner.serializer)
      ..add(GViewerData_viewer_pinnedItems_nodes__asRepository_primaryLanguage
          .serializer)
      ..add(GViewerData_viewer_pinnedItems_nodes__asRepository_stargazers
          .serializer)
      ..add(GViewerData_viewer_pinnedItems_nodes__base.serializer)
      ..add(GViewerData_viewer_repositories.serializer)
      ..add(GViewerData_viewer_repositories_nodes.serializer)
      ..add(GViewerData_viewer_repositories_nodes_forks.serializer)
      ..add(GViewerData_viewer_repositories_nodes_owner.serializer)
      ..add(GViewerData_viewer_repositories_nodes_primaryLanguage.serializer)
      ..add(GViewerData_viewer_repositories_nodes_stargazers.serializer)
      ..add(GViewerData_viewer_starredRepositories.serializer)
      ..add(GViewerReq.serializer)
      ..add(GViewerVars.serializer)
      ..add(GWatchersData.serializer)
      ..add(GWatchersData_repository.serializer)
      ..add(GWatchersData_repository_watchers.serializer)
      ..add(GWatchersData_repository_watchers_nodes.serializer)
      ..add(GWatchersData_repository_watchers_pageInfo.serializer)
      ..add(GWatchersReq.serializer)
      ..add(GWatchersVars.serializer)
      ..add(GX509Certificate.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCheckAnnotationData)]),
          () => new ListBuilder<GCheckAnnotationData>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCheckRunOutputImage)]),
          () => new ListBuilder<GCheckRunOutputImage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCheckRunAction)]),
          () => new ListBuilder<GCheckRunAction>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCheckRunAction)]),
          () => new ListBuilder<GCheckRunAction>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCheckSuiteAutoTriggerPreference)]),
          () => new ListBuilder<GCheckSuiteAutoTriggerPreference>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GCommitsData_repository_defaultBranchRef_target__asCommit_history_nodes)
          ]),
          () => new ListBuilder<
              GCommitsData_repository_defaultBranchRef_target__asCommit_history_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GCommitsData_repository_ref_target__asCommit_history_nodes)
          ]),
          () => new ListBuilder<
              GCommitsData_repository_ref_target__asCommit_history_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCommitsRefCommitData_history_nodes)]),
          () => new ListBuilder<GCommitsRefCommitData_history_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GCommitsRefData_target__asCommit_history_nodes)
          ]),
          () =>
              new ListBuilder<GCommitsRefData_target__asCommit_history_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GDraftPullRequestReviewComment)]),
          () => new ListBuilder<GDraftPullRequestReviewComment>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GDraftPullRequestReviewThread)]),
          () => new ListBuilder<GDraftPullRequestReviewThread>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFollowersData_user_followers_nodes)]),
          () => new ListBuilder<GFollowersData_user_followers_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GFollowingData_user_following_nodes)]),
          () => new ListBuilder<GFollowingData_user_following_nodes>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGistData_user_gist_files)]),
          () => new ListBuilder<GGistData_user_gist_files>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGistsData_user_gists_nodes)]),
          () => new ListBuilder<GGistsData_user_gists_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGistsData_user_gists_nodes_files)]),
          () => new ListBuilder<GGistsData_user_gists_nodes_files>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes)
          ]),
          () => new ListBuilder<
              GIssueData_repository_issueOrPullRequest__asIssue_timelineItems_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes)
          ]),
          () => new ListBuilder<
              GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes)
          ]),
          () => new ListBuilder<
              GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asPullRequestReview_comments_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GIssuesData_repository_issues_nodes)]),
          () => new ListBuilder<GIssuesData_repository_issues_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GIssuesData_repository_issues_nodes_labels_nodes)
          ]),
          () => new ListBuilder<
              GIssuesData_repository_issues_nodes_labels_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GMembersData_organization_membersWithRole_nodes)
          ]),
          () => new ListBuilder<
              GMembersData_organization_membersWithRole_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GPullRequestReviewPartsData_comments_nodes)
          ]),
          () => new ListBuilder<GPullRequestReviewPartsData_comments_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPullsData_repository_pullRequests_nodes)]),
          () => new ListBuilder<GPullsData_repository_pullRequests_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GPullsData_repository_pullRequests_nodes_labels_nodes)
          ]),
          () => new ListBuilder<
              GPullsData_repository_pullRequests_nodes_labels_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GReleasesData_repository_releases_nodes)]),
          () => new ListBuilder<GReleasesData_repository_releases_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GReleasesData_repository_releases_nodes_releaseAssets_nodes)
          ]),
          () => new ListBuilder<
              GReleasesData_repository_releases_nodes_releaseAssets_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GRepoData_repository_languages_edges)]),
          () => new ListBuilder<GRepoData_repository_languages_edges>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GRepoData_repository_refs_nodes)]),
          () => new ListBuilder<GRepoData_repository_refs_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GRepoData_repository_repositoryTopics_nodes)
          ]),
          () => new ListBuilder<GRepoData_repository_repositoryTopics_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GReposData_user_repositories_nodes)]),
          () => new ListBuilder<GReposData_user_repositories_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GStargazersData_repository_stargazers_nodes)
          ]),
          () => new ListBuilder<GStargazersData_repository_stargazers_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GStarsData_user_starredRepositories_nodes)
          ]),
          () => new ListBuilder<GStarsData_user_starredRepositories_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GUserData_repositoryOwner__asOrganization_pinnableItems_nodes)
          ]),
          () => new ListBuilder<
              GUserData_repositoryOwner__asOrganization_pinnableItems_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GUserData_repositoryOwner__asOrganization_pinnedItems_nodes)
          ]),
          () => new ListBuilder<
              GUserData_repositoryOwner__asOrganization_pinnedItems_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GUserData_repositoryOwner__asUser_contributionsCollection_contributionCalendar_weeks)
          ]),
          () => new ListBuilder<
              GUserData_repositoryOwner__asUser_contributionsCollection_contributionCalendar_weeks>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GUserData_repositoryOwner__asUser_contributionsCollection_contributionCalendar_weeks_contributionDays)
          ]),
          () => new ListBuilder<
              GUserData_repositoryOwner__asUser_contributionsCollection_contributionCalendar_weeks_contributionDays>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserData_repositoryOwner__asUser_pinnedItems_nodes)
          ]),
          () => new ListBuilder<
              GUserData_repositoryOwner__asUser_pinnedItems_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserData_repositoryOwner__asUser_repositories_nodes)
          ]),
          () => new ListBuilder<
              GUserData_repositoryOwner__asUser_repositories_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GUserPartsData_contributionsCollection_contributionCalendar_weeks)
          ]),
          () => new ListBuilder<
              GUserPartsData_contributionsCollection_contributionCalendar_weeks>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GUserPartsData_contributionsCollection_contributionCalendar_weeks_contributionDays)
          ]),
          () => new ListBuilder<
              GUserPartsData_contributionsCollection_contributionCalendar_weeks_contributionDays>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPartsData_pinnedItems_nodes)]),
          () => new ListBuilder<GUserPartsData_pinnedItems_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GUserPartsData_repositories_nodes)]),
          () => new ListBuilder<GUserPartsData_repositories_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GViewerData_viewer_contributionsCollection_contributionCalendar_weeks)
          ]),
          () => new ListBuilder<
              GViewerData_viewer_contributionsCollection_contributionCalendar_weeks>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GViewerData_viewer_contributionsCollection_contributionCalendar_weeks_contributionDays)
          ]),
          () => new ListBuilder<
              GViewerData_viewer_contributionsCollection_contributionCalendar_weeks_contributionDays>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GViewerData_viewer_pinnedItems_nodes)]),
          () => new ListBuilder<GViewerData_viewer_pinnedItems_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GViewerData_viewer_repositories_nodes)]),
          () => new ListBuilder<GViewerData_viewer_repositories_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GWatchersData_repository_watchers_nodes)]),
          () => new ListBuilder<GWatchersData_repository_watchers_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GIssueState)]),
          () => new ListBuilder<GIssueState>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
