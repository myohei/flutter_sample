import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('設定')),
      body: ListView.separated(
        itemBuilder: (context, idx) {
          final action = _Action.values[idx];
          return InkWell(
            onTap: () async {
              await action.tapped();
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
  logOut,
  remove,
}

extension _Label on _Action {
  String get label {
    switch (this) {
      case _Action.logOut:
        return 'ログアウト';
      case _Action.remove:
        return '退会';
    }
  }
}

extension _Taped on _Action {
  Future<void> tapped() async {}
}
