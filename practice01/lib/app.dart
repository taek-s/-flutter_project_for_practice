import 'package:flutter/material.dart';

import 'homePage.dart';
import 'login.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플러터 연습 프로젝트',
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent)),
      initialRoute: '/',
      routes: {
        "/": (BuildContext context) => const HomePage(),
        "/login": (BuildContext context) => const Login(),
      },
    );
  }
}
