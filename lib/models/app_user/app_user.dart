import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  // FIXME(mae): 仮実装
  const factory AppUser({
    required String id,
  }) = _AppUser;

  factory AppUser.fromFirebaseUser(firebase.User user) {
    return AppUser(id: user.uid);
  }
}
