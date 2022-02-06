import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/app.dart';
import '/data/providers/firebase_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final fbApp = await Firebase.initializeApp();
  runApp(
    ProviderScope(
      overrides: [
        firebaseAppProvider.overrideWithValue(fbApp),
      ],
      child: MyApp(),
    ),
  );
}
