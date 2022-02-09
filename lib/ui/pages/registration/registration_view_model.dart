import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final registrationViewModelProvider =
    ChangeNotifierProvider.autoDispose((_) => RegistrationViewModel());

class RegistrationViewModel extends ChangeNotifier {
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  String get email => _email.trim();

  String get password => _password.trim();

  String get confirmPassword => _confirmPassword.trim();

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  void setConfirmPassword(String password) {
    _confirmPassword = password;
    notifyListeners();
  }

  // TODO(mae): validation
  bool get isValid =>
      email.isNotEmpty &&
      password.isNotEmpty &&
      confirmPassword.isNotEmpty &&
      password == confirmPassword;
}
