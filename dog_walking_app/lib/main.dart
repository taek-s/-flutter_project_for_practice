import 'package:dog_walking_app/common/colors.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'onboarding.dart';
import 'signup.dart';

void main() {
  runApp(const BaseWidget());
}

class BaseWidget extends StatefulWidget {
  const BaseWidget({super.key});

  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Walking App',
      initialRoute: '/Home',
      routes: {
        "/Onboarding": (BuildContext context) => const Onboarding(),
        "/Signup": (BuildContext context) => const Signup(),
        "/Home": (BuildContext context) => const Home(),
      },
      theme: _dogWalkingAppTheme,
    );
  }
}

// 테마 생성
final ThemeData _dogWalkingAppTheme = _buildThemeData();
ThemeData _buildThemeData() {
  final ThemeData baseTheme = ThemeData.dark();
  return baseTheme.copyWith(
    colorScheme: baseTheme.colorScheme.copyWith(
      background: ColorConst.baseColor,
      primary: ColorConst.baseColor,
      onPrimary: ColorConst.whiteColor,
      secondary: ColorConst.greyColor01,
    ),
    textTheme: baseTheme.textTheme
        .copyWith(
          // 최상단 헤더
          headlineMedium: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34.0,
            color: ColorConst.whiteColor,
          ),
          // 헤더 밑 라벨 텍스트
          titleMedium: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17.0,
            color: ColorConst.greyColor02,
          ),
          // 버튼 텍스트
          titleSmall: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
            color: ColorConst.whiteColor,
          ),
          // 중간 크기 텍스트
          titleLarge: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: ColorConst.whiteColor,
          ),
          // 본문 텍스트
          bodyMedium: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13.0,
            color: ColorConst.whiteColor,
          ),
        )
        .apply(
          fontFamily: 'Poppins',
        ),
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: ColorConst.greyColor01,
      floatingLabelStyle: baseTheme.textTheme.bodyMedium,
      contentPadding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: ColorConst.greyColor01,
      selectedItemColor: ColorConst.whiteColor,
    ),
  );
}
