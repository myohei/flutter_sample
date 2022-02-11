import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/ui/hooks/use_router.dart';
import '/ui/pages/registration/registration_view_model.dart';
import '/ui/router/app_router.dart';
import '/ui/view_model/loading_state_view_model.dart';
import '/ui/view_model/user_view_model.dart';
import '/ui/widgets/loading_container.dart';

class RegistrationPage extends HookConsumerWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    final viewModel = ref.watch(registrationViewModelProvider);
    final loadingState = ref.watch(loadingStateViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '会員登録',
        ),
      ),
      body: SafeArea(
        child: LoadingContainer(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                Text(
                  'Eメールとパスワードで会員登録してください。',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  maxLines: 1,
                  decoration:
                      InputDecoration(labelText: 'Eメール', hintText: 'xxxxx'),
                  onChanged: viewModel.setEmail,
                ),
                TextFormField(
                  maxLines: 1,
                  obscureText: true,
                  decoration:
                      InputDecoration(labelText: 'パスワード', hintText: 'xxxxx'),
                  onChanged: viewModel.setPassword,
                ),
                TextFormField(
                  maxLines: 1,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'パスワード(確認用)',
                    hintText: 'xxxxx',
                  ),
                  onChanged: viewModel.setConfirmPassword,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: !viewModel.isValid
                      ? null
                      : () async {
                          final userViewModel = ref.read(userViewModelProvider);
                          final error = await loadingState.loadingWhile(
                            () => userViewModel.signUp(
                              email: viewModel.email,
                              password: viewModel.password,
                            ),
                          );
                          if (error != null) {
                            // TODO(mae): show dialog
                            return;
                          }
                          await router.replaceAll([HomeRoute()]);
                        },
                  child: Text('会員登録'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
