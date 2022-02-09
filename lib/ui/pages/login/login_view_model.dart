import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginViewModelProvider =
    ChangeNotifierProvider.autoDispose((_) => LoginViewModel());

class LoginViewModel extends ChangeNotifier {
  String _email = '';
  String _password = '';

  String get email => _email.trim();

  String get password => _password.trim();

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  // TODO(mae): validation
  bool get isValid => email.isNotEmpty && password.isNotEmpty;
}
