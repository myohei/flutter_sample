import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/providers/firebase_auth_provider.dart';
import '/data/repositories/user_repo.dart';
import '/models/app_exception.dart';
import '/models/app_user/app_user.dart';
import '/models/result/result.dart';

final userRepoProvider = Provider<UserRepo>((ref) => UserRepoImpl(ref.read));

class UserRepoImpl extends UserRepo {
  UserRepoImpl(this._read);

  final Reader _read;
  late final _fbAuth = _read(firebaseAuthProvider);

  @override
  Future<Result<AppUser>> find() async {
    final user = _fbAuth.currentUser;
    if (user == null) {
      return Result.failure(error: AppException.notFound('not found'));
    }
    return Result.success(data: AppUser.fromFirebaseUser(user));
  }
}
