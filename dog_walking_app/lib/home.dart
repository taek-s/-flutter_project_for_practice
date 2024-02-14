import 'package:flutter/material.dart';

import 'common/buttonStyle.dart';

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
