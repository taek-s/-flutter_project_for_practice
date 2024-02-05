import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

import 'app.dart';

void main() async {
  // sqflite_common_ffi 초기화
  sqfliteFfiInit();

  // databaseFactory 초기화
  databaseFactory = databaseFactoryFfiWeb;

  runApp(const BaseApp());
}
