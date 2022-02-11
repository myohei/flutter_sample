// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.authGuard})
      : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<HomePage>(
          routeData: routeData, child: const HomePage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return MaterialPageX<LoginPage>(
          routeData: routeData,
          child: LoginPage(key: args.key, onResult: args.onResult));
    },
    RegistrationRoute.name: (routeData) {
      return MaterialPageX<RegistrationPage>(
          routeData: routeData, child: const RegistrationPage());
    },
    TodoRoute.name: (routeData) {
      return MaterialPageX<TodoPage>(
          routeData: routeData, child: const TodoPage());
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<SettingsPage>(
          routeData: routeData, child: const SettingsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/', guards: [
          authGuard
        ], children: [
          RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'todos',
              fullMatch: true),
          RouteConfig(TodoRoute.name, path: 'todos', parent: HomeRoute.name),
          RouteConfig(SettingsRoute.name,
              path: 'settings', parent: HomeRoute.name)
        ]),
        RouteConfig(LoginRoute.name, path: '/login'),
        RouteConfig(RegistrationRoute.name, path: '/registration')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key, void Function(bool)? onResult})
      : super(LoginRoute.name,
            path: '/login', args: LoginRouteArgs(key: key, onResult: onResult));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onResult});

  final Key? key;

  final void Function(bool)? onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [RegistrationPage]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute()
      : super(RegistrationRoute.name, path: '/registration');

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [TodoPage]
class TodoRoute extends PageRouteInfo<void> {
  const TodoRoute() : super(TodoRoute.name, path: 'todos');

  static const String name = 'TodoRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}
