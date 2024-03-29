import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/ui/hooks/use_router.dart';
import '/ui/router/app_router.dart';
import '/ui/view_model/loading_state_view_model.dart';
import '/ui/view_model/user_view_model.dart';
import '/ui/widgets/loading_container.dart';
import 'login_view_model.dart';

typedef OnResult = void Function(bool loggedin);

class LoginPage extends HookConsumerWidget {
  const LoginPage({
    Key? key,
    this.onResult,
  }) : super(key: key);
  final OnResult? onResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    final viewModel = ref.watch(loginViewModelProvider);
    final loadingState = ref.watch(loadingStateViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ログイン',
        ),
      ),
      body: SafeArea(
        child: LoadingContainer(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                Text(
                  'Eメールとパスワードでログインしてください。',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  maxLines: 1,
                  decoration:
                      InputDecoration(labelText: 'Eメール', hintText: 'xxxxx'),
                  onChanged: viewModel.setEmail,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  maxLines: 1,
                  obscureText: true,
                  decoration:
                      InputDecoration(labelText: 'パスワード', hintText: 'xxxxx'),
                  onChanged: viewModel.setPassword,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: !viewModel.isValid
                      ? null
                      : () async {
                          final userViewModel = ref.read(userViewModelProvider);
                          final error = await loadingState.loadingWhile(
                            () => userViewModel.signIn(
                              email: viewModel.email,
                              password: viewModel.password,
                            ),
                          );
                          if (error != null) {
                            // TODO(mae): show dialog
                            return;
                          }
                          if (onResult != null) {
                            onResult?.call(true);
                          } else {
                            await router.replaceAll([HomeRoute()]);
                          }
                        },
                  child: Text('ログイン'),
                ),
                SizedBox(
                  height: 32,
                ),
                InkWell(
                  onTap: () {
                    router.push(RegistrationRoute());
                  },
                  child: Text(
                    'アカウントを持ってない方はこちらから\n会員登録してください',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
