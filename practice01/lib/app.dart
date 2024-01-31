import 'package:flutter/material.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: const Text('시작'),
      ),
    );
  }
}
