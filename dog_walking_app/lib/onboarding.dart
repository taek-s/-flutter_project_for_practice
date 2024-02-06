import 'package:flutter/material.dart';

import 'common/colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.loose,
        children: [
          Image.asset('/images/onBoarding/onBoarding.png'),
          Column(
            children: [
              Text('asdadas0'),
            ],
          ),
        ],
      ),
    );
  }
}
