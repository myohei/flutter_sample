import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/ui/hooks/use_router.dart';
import '/ui/router/app_router.dart';
import '/ui/view_model/loading_state_view_model.dart';
import '/ui/view_model/user_view_model.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    return Scaffold(
      appBar: AppBar(title: Text('設定')),
      body: ListView.separated(
        itemBuilder: (context, idx) {
          final action = _Action.values[idx];
          return InkWell(
            onTap: () async {
              // TODO(mae): show dialog
              await ref.read(loadingStateViewModelProvider).loadingWhile(
                    () => action.tapped(
                      userViewModel: ref.read(userViewModelProvider),
                    ),
                  );
              await router.replaceAll([LoginRoute()]);
            },
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Text(action.label),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(height: 1),
        itemCount: _Action.values.length,
      ),
    );
  }
}

enum _Action {
  signOut,
  remove,
}

extension _Label on _Action {
  String get label {
    switch (this) {
      case _Action.signOut:
        return 'サインアウト';
      case _Action.remove:
        return '退会';
    }
  }
}

extension _Taped on _Action {
  Future<void> tapped({required UserViewModel userViewModel}) async {
    switch (this) {
      case _Action.signOut:
        await userViewModel.signOut();
        break;
      case _Action.remove:
        await userViewModel.remove();
        break;
    }
  }
}
