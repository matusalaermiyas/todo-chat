// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:todo_chat/config/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp.router(
        title: "Todo Chat",
        routerConfig: routes,
        theme: ThemeData(fontFamily: 'Noto'),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
