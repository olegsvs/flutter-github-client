// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:ferry/ferry.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:github/github.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;

import '../../features/github/data/datasources/remote_data_source.dart' as _i6;
import '../../features/github/data/repositories/github_repository.dart' as _i10;
import '../../features/github/domain/repositories/i_github_repository.dart'
    as _i9;
import '../../features/github/domain/usecases/get_saved_accounts_usecase.dart'
    as _i14;
import '../../features/github/domain/usecases/github_usecases.dart' as _i12;
import '../../features/github/domain/usecases/open_github_oauth_usecase.dart'
    as _i11;
import '../../features/github/domain/usecases/prefs_usecase.dart' as _i13;
import '../../features/github/presentation/screens/commits/commits_bloc.dart'
    as _i31;
import '../../features/github/presentation/screens/compare/compare_bloc.dart'
    as _i32;
import '../../features/github/presentation/screens/contributors/contributors_bloc.dart'
    as _i33;
import '../../features/github/presentation/screens/events/events_bloc.dart'
    as _i34;
import '../../features/github/presentation/screens/files/files_bloc.dart'
    as _i35;
import '../../features/github/presentation/screens/gists/gists_bloc.dart'
    as _i15;
import '../../features/github/presentation/screens/gists/gists_files/gists_files_bloc.dart'
    as _i16;
import '../../features/github/presentation/screens/home/home_bloc.dart' as _i17;
import '../../features/github/presentation/screens/issues/issue/issue_bloc.dart'
    as _i18;
import '../../features/github/presentation/screens/issues/issue/issue_form/issue_form_bloc.dart'
    as _i19;
import '../../features/github/presentation/screens/issues/issues_bloc.dart'
    as _i20;
import '../../features/github/presentation/screens/login/login_bloc.dart'
    as _i21;
import '../../features/github/presentation/screens/news/news_bloc.dart' as _i22;
import '../../features/github/presentation/screens/object/object_bloc.dart'
    as _i23;
import '../../features/github/presentation/screens/orgs/orgs_bloc.dart' as _i24;
import '../../features/github/presentation/screens/orgs_repos/orgs_repos_bloc.dart'
    as _i25;
import '../../features/github/presentation/screens/pulls/pulls_bloc.dart'
    as _i26;
import '../../features/github/presentation/screens/releases/releases_bloc.dart'
    as _i27;
import '../../features/github/presentation/screens/repos/repo/repo_bloc.dart'
    as _i28;
import '../../features/github/presentation/screens/repos/repos_bloc.dart'
    as _i29;
import '../../features/github/presentation/screens/users/user/user_bloc.dart'
    as _i30;
import '../../features/internal/theme.dart' as _i3;
import '../network/network_info.dart' as _i8;
import 'register_module.dart' as _i36; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppModel>(() => _i3.AppModel());
  gh.lazySingleton<_i4.Client>(() => registerModule.gqlClient);
  gh.lazySingleton<_i5.GitHub>(() => registerModule.ghClient);
  gh.lazySingleton<_i6.IGithubRemoteDataSource>(
      () => _i6.GithubRemoteDataSource(get<_i5.GitHub>(), get<_i4.Client>()));
  gh.lazySingleton<_i7.InternetConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<_i8.NetworkInfo>(
      () => _i8.NetworkInfo(get<_i7.InternetConnectionChecker>()));
  gh.lazySingleton<_i9.IHomeRepository>(() => _i10.HomeRepository(
      get<_i8.NetworkInfo>(), get<_i6.IGithubRemoteDataSource>()));
  gh.lazySingleton<_i11.OpenGithubOAuthUseCase>(
      () => _i11.OpenGithubOAuthUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.QueryIssueUseCase>(
      () => _i12.QueryIssueUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i13.SetActiveAccountIndexUseCase>(
      () => _i13.SetActiveAccountIndexUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i13.SetActiveTabIndexUseCase>(
      () => _i13.SetActiveTabIndexUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.UnFollowUserUseCase>(
      () => _i12.UnFollowUserUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.CreateIssueUseCase>(
      () => _i12.CreateIssueUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.EditIssueUseCase>(
      () => _i12.EditIssueUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.FollowUserUseCase>(
      () => _i12.FollowUserUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GViewerUseCase>(
      () => _i12.GViewerUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i14.GetAccountsUseCase>(
      () => _i14.GetAccountsUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i13.GetActiveTabIndexUseCase>(
      () => _i13.GetActiveTabIndexUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetCommitsUseCase>(
      () => _i12.GetCommitsUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetComparisonUseCase>(
      () => _i12.GetComparisonUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetContributorsCountUseCase>(
      () => _i12.GetContributorsCountUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetContributorsUseCase>(
      () => _i12.GetContributorsUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i14.GetCurrentAccountIndexUseCase>(
      () => _i14.GetCurrentAccountIndexUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i14.GetCurrentAccountUseCase>(
      () => _i14.GetCurrentAccountUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetEventsUseCase>(
      () => _i12.GetEventsUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetFilesUseCase>(
      () => _i12.GetFilesUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetGistsFilesUseCase>(
      () => _i12.GetGistsFilesUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetGistsUseCase>(
      () => _i12.GetGistsUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetIssuesUseCase>(
      () => _i12.GetIssuesUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetObjectUseCase>(
      () => _i12.GetObjectUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetOrgsReposUseCase>(
      () => _i12.GetOrgsReposUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetOrgsUseCase>(
      () => _i12.GetOrgsUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetPullsUseCase>(
      () => _i12.GetPullsUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetReadmeUseCase>(
      () => _i12.GetReadmeUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetReleasesUseCase>(
      () => _i12.GetReleasesUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetRepoUseCase>(
      () => _i12.GetRepoUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetReposUseCase>(
      () => _i12.GetReposUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetStarsUseCase>(
      () => _i12.GetStarsUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetUserUseCase>(
      () => _i12.GetUserUseCase(get<_i9.IHomeRepository>()));
  gh.factory<_i15.GistsBloc>(() => _i15.GistsBloc(get<_i12.GetGistsUseCase>()));
  gh.factory<_i16.GistsFilesBloc>(
      () => _i16.GistsFilesBloc(get<_i12.GetGistsFilesUseCase>()));
  gh.factory<_i17.HomeBloc>(() => _i17.HomeBloc(
      get<_i14.GetCurrentAccountUseCase>(),
      get<_i13.GetActiveTabIndexUseCase>(),
      get<_i13.SetActiveTabIndexUseCase>()));
  gh.factory<_i18.IssueBloc>(() => _i18.IssueBloc(
      get<_i12.QueryIssueUseCase>(), get<_i12.EditIssueUseCase>()));
  gh.factory<_i19.IssueFormBloc>(
      () => _i19.IssueFormBloc(get<_i12.CreateIssueUseCase>()));
  gh.factory<_i20.IssuesBloc>(
      () => _i20.IssuesBloc(get<_i12.GetIssuesUseCase>()));
  gh.factory<_i21.LoginBloc>(() => _i21.LoginBloc(
      get<_i14.GetAccountsUseCase>(),
      get<_i11.OpenGithubOAuthUseCase>(),
      get<_i14.GetCurrentAccountIndexUseCase>(),
      get<_i13.SetActiveAccountIndexUseCase>()));
  gh.factory<_i22.NewsBloc>(() => _i22.NewsBloc(get<_i12.GetEventsUseCase>()));
  gh.factory<_i23.ObjectBloc>(
      () => _i23.ObjectBloc(get<_i12.GetObjectUseCase>()));
  gh.factory<_i24.OrgsBloc>(() => _i24.OrgsBloc(get<_i12.GetOrgsUseCase>()));
  gh.factory<_i25.OrgsReposBloc>(
      () => _i25.OrgsReposBloc(get<_i12.GetOrgsReposUseCase>()));
  gh.factory<_i26.PullsBloc>(() => _i26.PullsBloc(get<_i12.GetPullsUseCase>()));
  gh.factory<_i27.ReleasesBloc>(
      () => _i27.ReleasesBloc(get<_i12.GetReleasesUseCase>()));
  gh.factory<_i28.RepoBloc>(() => _i28.RepoBloc(get<_i12.GetRepoUseCase>(),
      get<_i12.GetReadmeUseCase>(), get<_i12.GetContributorsCountUseCase>()));
  gh.factory<_i29.ReposBloc>(() =>
      _i29.ReposBloc(get<_i12.GetReposUseCase>(), get<_i12.GetStarsUseCase>()));
  gh.factory<_i30.UserBloc>(() => _i30.UserBloc(
      get<_i12.GViewerUseCase>(),
      get<_i12.GetUserUseCase>(),
      get<_i12.FollowUserUseCase>(),
      get<_i12.UnFollowUserUseCase>()));
  gh.factory<_i31.CommitsBloc>(
      () => _i31.CommitsBloc(get<_i12.GetCommitsUseCase>()));
  gh.factory<_i32.CompareBloc>(
      () => _i32.CompareBloc(get<_i12.GetComparisonUseCase>()));
  gh.factory<_i33.ContributorsBloc>(
      () => _i33.ContributorsBloc(get<_i12.GetContributorsUseCase>()));
  gh.factory<_i34.EventsBloc>(
      () => _i34.EventsBloc(get<_i12.GetEventsUseCase>()));
  gh.factory<_i35.FilesBloc>(() => _i35.FilesBloc(get<_i12.GetFilesUseCase>()));
  return get;
}

class _$RegisterModule extends _i36.RegisterModule {}
