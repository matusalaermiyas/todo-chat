// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback callback;
  final String label;
  final bool authenticating;

  const AuthButton(
      {required this.callback,
      required this.label,
      required this.authenticating,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
                backgroundColor: MaterialStateProperty.all(Colors.pink)),
            onPressed: authenticating ? null : callback,
            child: authenticating
                ? LoadingAnimationWidget.horizontalRotatingDots(
                    color: Colors.white, size: 50)
                : Text(
                    label,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )));
  }
}
