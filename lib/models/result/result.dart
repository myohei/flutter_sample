import 'package:freezed_annotation/freezed_annotation.dart';

import '/models/app_exception.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.success({required T data}) = Success<T>;

  const factory Result.failure({required AppException error}) = Failure<T>;

  // static Result<T> guard<T>(T Function() body) {
  //   try {
  //     return Result.success(data: body());
  //   } on Exception catch (e) {
  //     return Result.failure(error: AppException(e));
  //   }
  // }

  static Future<Result<T>> guardNetwork<T>(Future<T> Function() future) async {
    try {
      return Result.success(data: await future());
    } on Exception catch (e) {
      return Result<T>.failure(error: AppException.network(e));
    }
  }

  static Future<Result<T>> guardFirebaseAuth<T>(
    Future<T> Function() future,
  ) async {
    try {
      return Result.success(data: await future());
    } on Exception catch (e) {
      return Result<T>.failure(error: AppException.firebaseAuth(e));
    }
  }

  bool get isSuccess => when(success: (data) => true, failure: (e) => false);

  bool get isFailure => !isSuccess;

  void ifSuccess(Function(T data) body) {
    maybeWhen<dynamic>(
      success: (data) => body(data),
      orElse: () {
        // no-op
      },
    );
  }

  void ifFailure(Function(AppException e) body) {
    maybeWhen<dynamic>(
      failure: (e) => body(e),
      orElse: () {
        // no-op
      },
    );
  }
}
