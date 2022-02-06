import '/models/app_user/app_user.dart';
import '/models/result/result.dart';

abstract class AuthRepo {
  Future<Result<AppUser>> signIn({
    required String email,
    required String password,
  });

  Future<Result<void>> signOut({required AppUser user});

  Future<Result<AppUser>> signUp({
    required String email,
    required String password,
  });

  Future<Result<void>> remove({required AppUser user});
}
