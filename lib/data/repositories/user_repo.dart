import '/models/app_user/app_user.dart';
import '/models/result/result.dart';

// ignore:one_member_abstracts
abstract class UserRepo {
  Future<Result<AppUser>> find();
}
