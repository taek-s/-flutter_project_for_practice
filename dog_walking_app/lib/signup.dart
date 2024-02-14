import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'common/buttonStyle.dart';
import 'common/colors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      // Container로 margin 설정
      body: Container(
        margin: const EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
        // 본문
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 뒤로가기 버튼
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.zero,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_back,
                    color: themeData.colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22.0,
            ),
            // 상단 텍스트 문구
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let’s  start here',
                      style: themeData.textTheme.headlineMedium,
                    ),
                    Text(
                      'Fill in your details to begin',
                      style: themeData.textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 22.0,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 343.0,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Fullname',
                        ),
                        style: TextStyle(
                          height: 2.2,
                        ),
                      ),
                      SizedBox(
                        height: 22.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                        ),
                        style: TextStyle(
                          height: 2.2,
                        ),
                      ),
                      SizedBox(
                        height: 22.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        style: TextStyle(
                          height: 2.2,
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 22.0,
            ),
            elevatedButtonStyleOrange(context, 'Sign up'),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text(
                'or',
                style: themeData.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            elevatedButtonStyleIconText(
                context,
                'Connect with Facebook',
                SvgPicture.asset(
                  '/images/logo/facebook.svg',
                  width: 24.0,
                  height: 24.0,
                ),
                ColorConst.blueColor),
            const SizedBox(
              height: 10.0,
            ),
            elevatedButtonStyleIconText(
                context,
                'Connet with Google',
                SvgPicture.asset(
                  '/images/logo/google.svg',
                  width: 24.0,
                  height: 24.0,
                ),
                ColorConst.baseColor),
            const SizedBox(
              height: 22.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'By signing in, I agree with ',
                    ),
                    Text(
                      'Terms of Use',
                      style: themeData.textTheme.bodyMedium!.copyWith(
                        color: ColorConst.greyColor03,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('and '),
                    Text(
                      'Privacy Policy',
                      style: themeData.textTheme.bodyMedium!.copyWith(
                        color: ColorConst.greyColor03,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
