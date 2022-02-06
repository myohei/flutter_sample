import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/repositories/auth_repo.dart';
import '/data/repositories/fb_auth_repo_impl.dart';
import '/models/app_user/app_user.dart';

final userViewModelProvider =
    ChangeNotifierProvider((ref) => UserViewModel(ref.read));

class UserViewModel extends ChangeNotifier {
  UserViewModel(this._read);

  final Reader _read;

  late final AuthRepo _repo = _read(fbAuthRepoProvider);
  AppUser? _user;

  bool get isAuthenticated => _user != null;

  Future<void> signIn({required String email, required String password}) async {
    final result = await _repo.signIn(email: email, password: password);
    // TODO(mae): handle exception
    result.ifSuccess((data) {
      _user = data;
      notifyListeners();
    });
  }

  Future<void> signUp({required String email, required String password}) async {
    final result = await _repo.signUp(email: email, password: password);
    // TODO(mae): handle exception
    result.ifSuccess((data) {
      _user = data;
      notifyListeners();
    });
  }

  Future<void> signOut() async {
    final result = await _repo.signOut(user: _user!);
    // TODO(mae): handle exception
    result.ifSuccess((data) {
      _user = null;
      notifyListeners();
    });
  }

  Future<void> remove() async {
    final result = await _repo.remove(user: _user!);
    // TODO(mae): handle exception
    result.ifSuccess((data) {
      _user = null;
      notifyListeners();
    });
  }
}
