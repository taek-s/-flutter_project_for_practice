import 'package:flutter/material.dart';

import 'common/colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      // 배경 이미지 + 텍스트 Stack
      body: Stack(
        children: [
          // 이미지 그라데이션 용 Stack
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              // 배경 이미지
              Image.asset('/images/onBoarding/onBoarding.png'),
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
                    stops: [
                      0.0,
                      0.75,
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Too tired to walk your dog?',
                  style: themeData.textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
