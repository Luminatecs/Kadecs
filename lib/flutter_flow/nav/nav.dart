import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

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
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : WelcomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : WelcomePageWidget(),
          routes: [
            FFRoute(
              name: 'WelcomePage',
              path: 'welcomePage',
              builder: (context, params) => WelcomePageWidget(),
            ),
            FFRoute(
              name: 'completeProfile',
              path: 'completeProfile',
              builder: (context, params) => CompleteProfileWidget(),
            ),
            FFRoute(
              name: 'Library',
              path: 'library',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Library')
                  : NavBarPage(
                      initialPage: 'Library',
                      page: LibraryWidget(),
                    ),
            ),
            FFRoute(
              name: 'accountSettings',
              path: 'accountSettings',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'accountSettings')
                  : AccountSettingsWidget(),
            ),
            FFRoute(
              name: 'test_onboarding',
              path: 'testOnboarding',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'test_onboarding')
                  : NavBarPage(
                      initialPage: 'test_onboarding',
                      page: TestOnboardingWidget(),
                    ),
            ),
            FFRoute(
              name: 'SHS_COURSES',
              path: 'shsCourses',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: ShsCoursesWidget(),
              ),
            ),
            FFRoute(
              name: 'MELANCHOLIC',
              path: 'MELANCHOLIC',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: MelancholicWidget(),
              ),
            ),
            FFRoute(
              name: 'Sanguine',
              path: 'Sanguine',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: SanguineWidget(),
              ),
            ),
            FFRoute(
              name: 'PHLEGMATIC',
              path: 'PHLEGMATIC',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: PhlegmaticWidget(),
              ),
            ),
            FFRoute(
              name: 'MiniIP30questionvariant',
              path: 'miniIP30questionvariant',
              builder: (context, params) => MiniIP30questionvariantWidget(),
            ),
            FFRoute(
              name: 'UserProfile',
              path: 'userProfile',
              builder: (context, params) => UserProfileWidget(),
            ),
            FFRoute(
              name: 'comingSoon',
              path: 'comingSoon',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: ComingSoonWidget(),
              ),
            ),
            FFRoute(
              name: 'search',
              path: 'search',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: SearchWidget(),
              ),
            ),
            FFRoute(
              name: 'TestsTemperaments',
              path: 'testsTemperaments',
              builder: (context, params) => TestsTemperamentsWidget(),
            ),
            FFRoute(
              name: 'passwordreset',
              path: 'passwordreset',
              builder: (context, params) => PasswordresetWidget(),
            ),
            FFRoute(
              name: 'Careers',
              path: 'careers',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: CareersWidget(),
              ),
            ),
            FFRoute(
              name: 'tests',
              path: 'tests',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: TestsWidget(),
              ),
            ),
            FFRoute(
              name: 'Home_Dashboard',
              path: 'Home_Dashboard',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Home_Dashboard')
                  : HomeDashboardWidget(),
            ),
            FFRoute(
              name: 'SchoolDetailPageGeyhey',
              path: 'schoolDetailPageDemoGeyhey',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: SchoolDetailPageGeyheyWidget(),
              ),
            ),
            FFRoute(
              name: 'SchoolDetailPageDemoAis',
              path: 'schoolDetailPageDemoAIS',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: SchoolDetailPageDemoAisWidget(),
              ),
            ),
            FFRoute(
              name: 'four4Temperamants',
              path: 'four4Temperamants',
              builder: (context, params) => Four4TemperamantsWidget(),
            ),
            FFRoute(
              name: 'businessNew',
              path: 'businessNew',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: BusinessNewWidget(),
              ),
            ),
            FFRoute(
              name: 'feedback',
              path: 'feedback',
              builder: (context, params) => FeedbackWidget(),
            ),
            FFRoute(
              name: 'sHSSchoolsNew',
              path: 'sHSSchoolsNew',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: SHSSchoolsNewWidget(),
              ),
            ),
            FFRoute(
              name: 'schoolDetailNew',
              path: 'schoolDetailNew',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: SchoolDetailNewWidget(
                  schoolreference: params.getParam<ShsSchoolsRow>(
                      'schoolreference', ParamType.SupabaseRow),
                ),
              ),
            ),
            FFRoute(
              name: 'electivedetail2',
              path: 'electivedetail2',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Electivedetail2Widget(
                  electivereferencesupa: params.getParam<ShsElectivesRow>(
                      'electivereferencesupa', ParamType.SupabaseRow),
                ),
              ),
            ),
            FFRoute(
              name: 'TestsWebview',
              path: 'testsWebview',
              builder: (context, params) => TestsWebviewWidget(),
            ),
            FFRoute(
              name: 'visualArtsNew',
              path: 'visualArtsNew',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: VisualArtsNewWidget(),
              ),
            ),
            FFRoute(
              name: 'AgriculturalScienceNew',
              path: 'agriculturalScienceNew',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: AgriculturalScienceNewWidget(),
              ),
            ),
            FFRoute(
              name: 'generalArtsNew',
              path: 'generalArtsNew',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: GeneralArtsNewWidget(),
              ),
            ),
            FFRoute(
              name: 'HomeEconsNew',
              path: 'HomeEconsNew',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: HomeEconsNewWidget(),
              ),
            ),
            FFRoute(
              name: 'scienceNew',
              path: 'scienceNew',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: ScienceNewWidget(),
              ),
            ),
            FFRoute(
              name: 'TechnicalScienceNew',
              path: 'TechnicalScienceNew',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: TechnicalScienceNewWidget(),
              ),
            ),
            FFRoute(
              name: 'electiveDetailSearchResult',
              path: 'electiveDetailSearchResult',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: ElectiveDetailSearchResultWidget(
                  electivereference: params.getParam('electivereference',
                      ParamType.DocumentReference, false, ['Elective']),
                ),
              ),
            ),
            FFRoute(
              name: 'beceTimeTable',
              path: 'beceTimeTable',
              builder: (context, params) => BeceTimeTableWidget(),
            ),
            FFRoute(
              name: 'faqs',
              path: 'faqs',
              builder: (context, params) => FaqsWidget(),
            ),
            FFRoute(
              name: 'fullExperience',
              path: 'fullExperience',
              builder: (context, params) => FullExperienceWidget(),
            ),
            FFRoute(
              name: 'authenticationsignup',
              path: 'authenticationsignup',
              builder: (context, params) => AuthenticationsignupWidget(),
            ),
            FFRoute(
              name: 'authenticationlogin',
              path: 'authenticationlogin',
              builder: (context, params) => AuthenticationloginWidget(),
            ),
            FFRoute(
              name: 'choleric',
              path: 'choleric',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: CholericWidget(),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
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
    ..addAll(queryParameters)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
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
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
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
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/welcomePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
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
                  child: Image.asset(
                    'assets/images/Kadecs_spalsh.gif',
                    fit: BoxFit.fitWidth,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
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
