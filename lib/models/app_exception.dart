enum AppExceptionType {
  network,
  badRequest,
  unauthorized,
  notFound,
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

  factory AppException.notFound(String message) {
    return AppException._(message: message, type: AppExceptionType.notFound);
  }

  final String message;
  final AppExceptionType type;
}
