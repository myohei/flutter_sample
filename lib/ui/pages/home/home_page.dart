import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/ui/router/app_router.dart';
import '/ui/view_model/user_view_model.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text('HomePage'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final userViewModel = ref.read(userViewModelProvider);
          // await userViewModel.signOut();
          await userViewModel.remove();
          await context.router.replaceAll([LoginRoute()]);
        },
      ),
    );
  }
}
