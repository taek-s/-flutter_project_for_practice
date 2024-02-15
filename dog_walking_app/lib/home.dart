import 'package:flutter/material.dart';

import 'common/buttonStyle.dart';
import 'common/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 상단 텍스트/라벨 + 상단 버튼
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: themeData.textTheme.headlineMedium,
                    ),
                    Text(
                      'Explore dog walkers',
                      style: themeData.textTheme.titleMedium,
                    ),
                  ],
                ),
                elevatedButtonStyleOrangeSmall(
                    context, 'Book a walk', Icons.add, null),
              ],
            ),
            const SizedBox(
              height: 22.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownMenu(
                  dropdownMenuEntries: [
                    DropdownMenuEntry(label: 'Seoul', value: 'Seoul'),
                    DropdownMenuEntry(label: 'Incheon', value: 'Incheon'),
                  ],
                  leadingIcon: Icon(Icons.location_on_outlined),
                  trailingIcon: Icon(Icons.location_searching),
                  inputDecorationTheme: InputDecorationTheme(
                    filled: true,
                  ),
                  label: Text('Your location...'),
                  width: 343.0,
                ),
              ],
            ),
            const SizedBox(
              height: 22.0,
            ),
            Container(
              width: 355.0,
              height: 132.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ColorConst.gradentsColorLeft,
                    ColorConst.gradentsColorRight,
                  ],
                ),
              ),
              child: Row(
                children: [
                  Image.asset('/images/home/home_6.png'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Surprise For You',
                        style: themeData.textTheme.bodyMedium,
                      ),
                      Text(
                        'The first walk is free!',
                        style: themeData.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: 'Moments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
