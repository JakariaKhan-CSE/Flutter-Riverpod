import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/hard/riverpodModel.dart';

final riverpodEasyLevel = StateProvider<int>((ref) {
  return 0;
});

final riverpodHardLevel = ChangeNotifierProvider((ref) {
  return Riverpodmodel(counter: 0);
});
