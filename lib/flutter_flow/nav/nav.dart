import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : SplashScreenWidget(),
        ),
        FFRoute(
          name: SplashScreenWidget.routeName,
          path: SplashScreenWidget.routePath,
          builder: (context, params) => SplashScreenWidget(),
        ),
        FFRoute(
          name: LoginScreenWidget.routeName,
          path: LoginScreenWidget.routePath,
          builder: (context, params) => LoginScreenWidget(),
        ),
        FFRoute(
          name: RegisterScreenWidget.routeName,
          path: RegisterScreenWidget.routePath,
          builder: (context, params) => RegisterScreenWidget(
            userType: params.getParam<UserType>(
              'userType',
              ParamType.Enum,
            ),
          ),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: ProfileSetupJobSeekerWidget.routeName,
          path: ProfileSetupJobSeekerWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'ProfileSetupJobSeeker')
              : NavBarPage(
                  initialPage: 'ProfileSetupJobSeeker',
                  page: ProfileSetupJobSeekerWidget(),
                ),
        ),
        FFRoute(
          name: JobProviderProfileSetupWidget.routeName,
          path: JobProviderProfileSetupWidget.routePath,
          builder: (context, params) => JobProviderProfileSetupWidget(),
        ),
        FFRoute(
          name: AppliedJobsWidget.routeName,
          path: AppliedJobsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'AppliedJobs')
              : NavBarPage(
                  initialPage: 'AppliedJobs',
                  page: AppliedJobsWidget(),
                ),
        ),
        FFRoute(
          name: DashboardJobSeekerWidget.routeName,
          path: DashboardJobSeekerWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'DashboardJobSeeker')
              : NavBarPage(
                  initialPage: 'DashboardJobSeeker',
                  page: DashboardJobSeekerWidget(),
                ),
        ),
        FFRoute(
          name: NotificationJobSeekerWidget.routeName,
          path: NotificationJobSeekerWidget.routePath,
          builder: (context, params) => NotificationJobSeekerWidget(),
        ),
        FFRoute(
          name: JobDetailsWidget.routeName,
          path: JobDetailsWidget.routePath,
          builder: (context, params) => JobDetailsWidget(
            jobId: params.getParam(
              'jobId',
              ParamType.String,
            ),
            companyId: params.getParam(
              'companyId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DashboardJobProviderWidget.routeName,
          path: DashboardJobProviderWidget.routePath,
          builder: (context, params) => DashboardJobProviderWidget(),
        ),
        FFRoute(
          name: ApplicationDetailsJobProviderWidget.routeName,
          path: ApplicationDetailsJobProviderWidget.routePath,
          builder: (context, params) => ApplicationDetailsJobProviderWidget(),
        ),
        FFRoute(
          name: ApplicationDetailsWidget.routeName,
          path: ApplicationDetailsWidget.routePath,
          builder: (context, params) => ApplicationDetailsWidget(
            jobId: params.getParam(
              'jobId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ApplyJobWidget.routeName,
          path: ApplyJobWidget.routePath,
          builder: (context, params) => ApplyJobWidget(
            userId: params.getParam(
              'userId',
              ParamType.String,
            ),
            jobId: params.getParam(
              'jobId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ApplicantProfileWidget.routeName,
          path: ApplicantProfileWidget.routePath,
          builder: (context, params) => ApplicantProfileWidget(),
        ),
        FFRoute(
          name: NotificationJobProviderWidget.routeName,
          path: NotificationJobProviderWidget.routePath,
          builder: (context, params) => NotificationJobProviderWidget(),
        ),
        FFRoute(
          name: CreateJobWidget.routeName,
          path: CreateJobWidget.routePath,
          builder: (context, params) => CreateJobWidget(),
        ),
        FFRoute(
          name: CreatedJobDetailsWidget.routeName,
          path: CreatedJobDetailsWidget.routePath,
          builder: (context, params) => CreatedJobDetailsWidget(),
        ),
        FFRoute(
          name: JobSeakerProfileWidget.routeName,
          path: JobSeakerProfileWidget.routePath,
          builder: (context, params) => JobSeakerProfileWidget(),
        ),
        FFRoute(
          name: JobSeekerListWidget.routeName,
          path: JobSeekerListWidget.routePath,
          builder: (context, params) => JobSeekerListWidget(),
        ),
        FFRoute(
          name: UserProfileWidget.routeName,
          path: UserProfileWidget.routePath,
          builder: (context, params) => UserProfileWidget(),
        ),
        FFRoute(
          name: CompanyProfileWidget.routeName,
          path: CompanyProfileWidget.routePath,
          builder: (context, params) => CompanyProfileWidget(),
        ),
        FFRoute(
          name: FavoriteUsersWidget.routeName,
          path: FavoriteUsersWidget.routePath,
          builder: (context, params) => FavoriteUsersWidget(),
        ),
        FFRoute(
          name: FavoriteJobsWidget.routeName,
          path: FavoriteJobsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'FavoriteJobs')
              : NavBarPage(
                  initialPage: 'FavoriteJobs',
                  page: FavoriteJobsWidget(),
                ),
        ),
        FFRoute(
          name: SettingsScreenWidget.routeName,
          path: SettingsScreenWidget.routePath,
          builder: (context, params) => SettingsScreenWidget(),
        ),
        FFRoute(
          name: ReportedProfilesWidget.routeName,
          path: ReportedProfilesWidget.routePath,
          builder: (context, params) => ReportedProfilesWidget(),
        ),
        FFRoute(
          name: BlockedUsersWidget.routeName,
          path: BlockedUsersWidget.routePath,
          builder: (context, params) => BlockedUsersWidget(),
        ),
        FFRoute(
          name: NotificationSettingsWidget.routeName,
          path: NotificationSettingsWidget.routePath,
          builder: (context, params) => NotificationSettingsWidget(),
        ),
        FFRoute(
          name: AboutUsWidget.routeName,
          path: AboutUsWidget.routePath,
          builder: (context, params) => AboutUsWidget(),
        ),
        FFRoute(
          name: PrivacySettingsWidget.routeName,
          path: PrivacySettingsWidget.routePath,
          builder: (context, params) => PrivacySettingsWidget(),
        ),
        FFRoute(
          name: PrivacyPolicyWidget.routeName,
          path: PrivacyPolicyWidget.routePath,
          builder: (context, params) => PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: TermsOfServiceWidget.routeName,
          path: TermsOfServiceWidget.routePath,
          builder: (context, params) => TermsOfServiceWidget(),
        ),
        FFRoute(
          name: OnboardingWidget.routeName,
          path: OnboardingWidget.routePath,
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: CommonEmptyScreenWidget.routeName,
          path: CommonEmptyScreenWidget.routePath,
          builder: (context, params) => CommonEmptyScreenWidget(),
        ),
        FFRoute(
          name: CommonErrorScreenWidget.routeName,
          path: CommonErrorScreenWidget.routePath,
          builder: (context, params) => CommonErrorScreenWidget(),
        ),
        FFRoute(
          name: NetworkErrorWidget.routeName,
          path: NetworkErrorWidget.routePath,
          builder: (context, params) => NetworkErrorWidget(),
        ),
        FFRoute(
          name: HelpScreenWidget.routeName,
          path: HelpScreenWidget.routePath,
          builder: (context, params) => HelpScreenWidget(),
        ),
        FFRoute(
          name: ChangePasswordWidget.routeName,
          path: ChangePasswordWidget.routePath,
          builder: (context, params) => ChangePasswordWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/splashScreen';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/splash_screen.png',
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
