import 'package:flutter/material.dart';

extension ConnectionStateExtension on ConnectionState {
  bool get isDone => this == ConnectionState.done;

  bool get isActiveOrDone =>
      this == ConnectionState.active || this == ConnectionState.done;
}
