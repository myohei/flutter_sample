abstract class AuthDataSource<U> {
  Future<U?> get currentUser;

  Future<U?> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut({required U user});

  Future<U?> signUp({
    required String email,
    required String password,
  });

  Future<void> remove({required U user});
}
