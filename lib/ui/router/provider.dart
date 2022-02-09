part of 'app_router.dart';

final appRouterProvider = Provider<AppRouter>((ref) {
  return AppRouter(
    authGuard: AuthGuard(ref),
  );
});
