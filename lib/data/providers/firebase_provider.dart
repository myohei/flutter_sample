import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseAppProvider = Provider<FirebaseApp>(
  (_) => throw Exception('Provider was not initialized'),
);
