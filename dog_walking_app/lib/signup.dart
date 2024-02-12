import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      // Container로 margin 설정
      body: Container(
        margin: const EdgeInsets.fromLTRB(15.0, 55.0, 15.0, 55.0),
        // 본문
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 뒤로가기 버튼
            Row(
              children: [
                IconButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: () {},
                  icon: Icon(
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
            Row(
              children: [
                SizedBox(
                  width: 343.0,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Fullname',
                        ),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                        ),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
