import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/ui/router/app_router.dart';
import '/ui/theme/app_theme.dart';

class MyApp extends ConsumerWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final theme = AppTheme.light();
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: theme.data,
      themeMode: ThemeMode.light,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
