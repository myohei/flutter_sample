import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/ui/router/app_router.dart';
import 'package:flutter_sample/ui/view_model/user_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
