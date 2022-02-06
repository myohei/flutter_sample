import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/providers/firebase_provider.dart';

final firebaseAuthProvider = Provider(
  (ref) => FirebaseAuth.instanceFor(app: ref.watch(firebaseAppProvider)),
);
