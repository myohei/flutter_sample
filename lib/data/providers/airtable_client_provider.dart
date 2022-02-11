import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final airtableClientProvider = Provider.family((ref, AirtableApiData data) {
  final dio = buildDioClient(
    apiKey: data.apiKey,
    baseId: data.baseId,
    view: data.view,
  );
  ref.onDispose(dio.close);
  return dio;
});

Dio buildDioClient({
  required String apiKey,
  required String baseId,
  required String view,
}) {
  final option = BaseOptions(
    baseUrl: 'https://api.airtable.com/v0/$baseId/$view',
  );
  return Dio(option)
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers[HttpHeaders.authorizationHeader] = 'Bearer $apiKey';
          handler.next(options);
        },
      ),
    );
}

@immutable
class AirtableApiData {
  AirtableApiData({
    required this.apiKey,
    required this.baseId,
    required this.view,
  });

  final String apiKey;
  final String baseId;
  final String view;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirtableApiData &&
          runtimeType == other.runtimeType &&
          apiKey == other.apiKey &&
          baseId == other.baseId &&
          view == other.view;

  @override
  int get hashCode => apiKey.hashCode ^ baseId.hashCode ^ view.hashCode;
}
