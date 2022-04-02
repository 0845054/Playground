import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StringNotifier extends StateNotifier<List<String>> {
  StringNotifier() : super([]);

  void addNew(String newString) {
    /// state is from StateNotifier Class
    /// state is immutable
    /// '...' is used to spread an array
    state = [...state, newString];
  }
}

class CountNotifier extends StateNotifier<int> {
  CountNotifier() : super(0);

  void increase() => state++;
  void decrease() => state--;
}

class Providers {
  static final stringProvider = StateNotifierProvider((_) => StringNotifier());
  static final countProvider = StateNotifierProvider((_) => CountNotifier());
}
