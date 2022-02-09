import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/ui/view_model/user_view_model.dart';
import 'app_router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(ProviderRef ref) {
    ref.listen<bool>(
        userViewModelProvider.select((value) => value.isAuthenticated),
        (previous, next) {
      _authenticated = next;
    });
  }

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
