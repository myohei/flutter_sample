import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/ui/pages/home/home_page.dart';
import '/ui/pages/login/login_page.dart';
import '/ui/pages/registration/registration_page.dart';
import '/ui/router/auth_guard.dart';

part 'app_router.gr.dart';
part 'provider.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<HomePage>(
      path: '/',
      page: HomePage,
      initial: true,
      guards: [AuthGuard],
    ),
    AutoRoute<LoginPage>(
      path: '/login',
      page: LoginPage,
    ),
    AutoRoute<RegistrationPage>(
      path: '/registration',
      page: RegistrationPage,
    )
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required AuthGuard authGuard}) : super(authGuard: authGuard);
}
