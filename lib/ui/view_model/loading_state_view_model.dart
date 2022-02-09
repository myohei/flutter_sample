import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loadingStateViewModelProvider =
    ChangeNotifierProvider.autoDispose((_) => LoadingStateViewModel());

class LoadingStateViewModel extends ChangeNotifier {
  bool _loading = false;

  bool get isLoading => _loading;

  Future<T> loadingWhile<T>(Future<T> Function() future) {
    return Future.microtask(toLoading)
        .then((_) => future())
        .whenComplete(toIdle);
  }

  void toLoading() {
    if (isLoading) {
      return;
    }
    _loading = true;
    notifyListeners();
  }

  void toIdle() {
    if (!isLoading) {
      return;
    }
    _loading = false;
    notifyListeners();
  }
}
