import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/providers/firebase_auth_provider.dart';
import '/data/remote/auth_data_source.dart';

final fbAuthDataSourceProvider = Provider<AuthDataSource<firebase.User>>(
  (ref) => AuthDataSourceImpl(ref.read),
);

class AuthDataSourceImpl extends AuthDataSource<firebase.User> {
  AuthDataSourceImpl(this._read);

  final Reader _read;
  late final _fbAuth = _read(firebaseAuthProvider);

  @override
  Future<firebase.User?> signIn({
    required String email,
    required String password,
  }) async {
    final credentials = await _fbAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credentials.user;
  }

  @override
  Future<void> signOut({required firebase.User user}) => _fbAuth.signOut();

  @override
  Future<firebase.User?> signUp({
    required String email,
    required String password,
  }) async {
    final credentials = await _fbAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credentials.user;
  }

  @override
  Future<void> remove({required firebase.User user}) async => user.delete();

  @override
  Future<firebase.User?> get currentUser => Future.value(_fbAuth.currentUser);
}
