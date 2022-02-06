import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/remote/auth_data_source_impl.dart';
import '/data/repositories/auth_repo.dart';
import '/models/app_user/app_user.dart';
import '/models/result/result.dart';

final fbAuthRepoProvider =
    Provider<AuthRepo>((ref) => FirebaseAuthRepo(ref.read));

class FirebaseAuthRepo extends AuthRepo {
  FirebaseAuthRepo(this._read);

  final Reader _read;

  late final _ds = _read(fbAuthDataSourceProvider);

  @override
  Future<Result<void>> remove({required AppUser user}) async =>
      Result.guardFirebaseAuth(() async {
        final currentUser = await _ds.currentUser;
        if (currentUser != null) {
          await _ds.remove(user: currentUser);
        }
      });

  @override
  Future<Result<AppUser>> signIn({
    required String email,
    required String password,
  }) async =>
      Result.guardFirebaseAuth(() async {
        final fbUser = await _ds.signIn(email: email, password: password);
        if (fbUser == null) {
          // TODO(mae): fix
          throw Exception('');
        }
        return AppUser.fromFirebaseUser(fbUser);
      });

  @override
  Future<Result<void>> signOut({required AppUser user}) =>
      Result.guardFirebaseAuth(() async {
        final currentUser = await _ds.currentUser;
        if (currentUser != null) {
          await _ds.remove(user: currentUser);
        }
      });

  @override
  Future<Result<AppUser>> signUp({
    required String email,
    required String password,
  }) async =>
      Result.guardFirebaseAuth(() async {
        final fbUser = await _ds.signUp(email: email, password: password);
        if (fbUser == null) {
          // TODO(mae): fix
          throw Exception('');
        }
        return AppUser.fromFirebaseUser(fbUser);
      });
}
