import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/repositories/auth_repo.dart';
import '/data/repositories/fb_auth_repo_impl.dart';
import '/data/repositories/user_repo.dart';
import '/data/repositories/user_repo_impl.dart';
import '/models/app_exception.dart';
import '/models/app_user/app_user.dart';

final userViewModelProvider =
    ChangeNotifierProvider((ref) => UserViewModel(ref.read)..initialize());

class UserViewModel extends ChangeNotifier {
  UserViewModel(this._read);

  final Reader _read;

  late final AuthRepo _repo = _read(fbAuthRepoProvider);
  late final UserRepo _userRepo = _read(userRepoProvider);
  AppUser? _user;

  bool get isAuthenticated => _user != null;

  bool _initialize = false;

  bool get isInitialized => _initialize;

  Future<void> initialize() async {
    final result = await _userRepo.find();
    result.ifSuccess((data) => _user = data);
    _initialize = true;
    notifyListeners();
  }

  Future<AppException?> signIn({
    required String email,
    required String password,
  }) async {
    final result = await _repo.signIn(email: email, password: password);
    return result.when(
      success: (data) {
        _user = data;
        notifyListeners();
      },
      failure: (error) => error,
    );
  }

  Future<AppException?> signUp({
    required String email,
    required String password,
  }) async {
    final result = await _repo.signUp(email: email, password: password);
    return result.when(
      success: (data) {
        _user = data;
        notifyListeners();
      },
      failure: (error) => error,
    );
  }

  Future<AppException?> signOut() async {
    final result = await _repo.signOut(user: _user!);
    return result.when(
      success: (data) {
        _user = null;
        notifyListeners();
      },
      failure: (error) => error,
    );
  }

  Future<AppException?> remove() async {
    final result = await _repo.remove(user: _user!);
    return result.when(
      success: (data) {
        _user = null;
        notifyListeners();
      },
      failure: (error) => error,
    );
  }
}
