import 'package:auto_route/auto_route.dart';

import 'app_router.dart';

class AuthGuard extends AutoRouteGuard {
  // TODO(mae): Fix
  bool _authenticated = false;

  bool get authenticated => _authenticated;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authenticated) {
      resolver.next(true);
    } else {
      router.push(
        LoginRoute(
          onResult: (success) {
            _authenticated = true;
            resolver.next(success);
            router.removeLast();
          },
        ),
      );
    }
  }
}
