// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:toastification/toastification.dart';

class ToastUtil {
  static void success({required String title}) {
    toastification.show(
        title: Text(title),
        autoCloseDuration: const Duration(seconds: 4),
        style: ToastificationStyle.minimal,
        type: ToastificationType.success);
  }

  static void error({required String title}) {
    toastification.show(
        title: Text(title),
        style: ToastificationStyle.minimal,
        autoCloseDuration: const Duration(seconds: 4),
        type: ToastificationType.error);
  }
}
