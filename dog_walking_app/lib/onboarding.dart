import 'package:dog_walking_app/common/buttonStyle.dart';
import 'package:flutter/material.dart';

import 'common/colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextTheme textTheme = themeData.textTheme.copyWith();
    return Scaffold(
      // 배경 이미지 + 텍스트 Stack
      body: Stack(
        children: [
          // 이미지 그라데이션 용 Stack
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              // 배경 이미지
              Positioned(
                top: -30.0,
                child: Image.asset('/images/onBoarding/onBoarding.png'),
              ),
              // 그라데이션 효과용 Container
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorConst.greyColor02.withOpacity(0.1),
                      ColorConst.baseColor,
                    ],
                    stops: const [
                      0.0,
                      0.7,
                    ],
                  ),
                ),
              ),
            ],
          ),
          // 로고 + 텍스트 + 버튼 UI
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 45.0,
                    left: 16.0,
                  ),
                  child: Row(
                    children: [
                      Image.asset('/images/logo/logoIcon.png'),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Too tired to walk your dog?',
                      style: textTheme.titleLarge,
                    ),
                    Text(
                      'Let’s help you!',
                      style: textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 22.0,
                    ),
                    buttonStyle(context, 'Join our community'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
