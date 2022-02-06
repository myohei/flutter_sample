enum AppExceptionType {
  network,
  badRequest,
  unauthorized,
  cancel,
  timeout,
  server,
  unknown,
}

class AppException {
  const AppException._({required this.message, required this.type});

  factory AppException.network(Exception e) {
    // TODO(mae): impl
    return AppException._(
      message: e.toString(),
      type: AppExceptionType.network,
    );
  }

  factory AppException.firebaseAuth(Exception e) {
    // TODO(mae): impl
    return AppException._(
      message: e.toString(),
      type: AppExceptionType.badRequest,
    );
  }

  final String message;
  final AppExceptionType type;
}
