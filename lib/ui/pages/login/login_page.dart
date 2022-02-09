import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/ui/router/app_router.dart';

typedef OnResult = void Function(bool loggedin);

class LoginPage extends ConsumerWidget {
  const LoginPage({
    Key? key,
    this.onResult,
  }) : super(key: key);
  final OnResult? onResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text('LoginPage'),
              TextButton(
                onPressed: () {
                  if (onResult != null) {
                    onResult?.call(true);
                  } else {
                    context.router.replaceAll([HomeRoute()]);
                  }
                },
                child: Text('btn'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
