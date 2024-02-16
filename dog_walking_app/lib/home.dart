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
            ),
            const SizedBox(
              height: 22.0,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top walkers',
                      style: themeData.textTheme.headlineMedium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: themeData.textTheme.titleMedium!.copyWith(
                          fontSize: 15.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                // Top walkers ScrollView
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 200.0,
                        height: 176.0,
                        margin: const EdgeInsets.only(
                          right: 40.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 200.0,
                              height: 125.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    '/images/home/home_1.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mark Greene',
                                      style: themeData.textTheme.bodyMedium!
                                          .copyWith(
                                        fontSize: 17.0,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          size: 10.0,
                                        ),
                                        const SizedBox(
                                          width: 3.0,
                                        ),
                                        Text(
                                          'India, Guntur',
                                          style: themeData.textTheme.bodyMedium!
                                              .copyWith(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 65.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11.0),
                                    color: ColorConst.blackColor2,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '\$5/hr',
                                      style: themeData.textTheme.bodyMedium!
                                          .copyWith(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 200.0,
                        height: 176.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 200.0,
                              height: 125.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    '/images/home/home_1.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mark Greene',
                                      style: themeData.textTheme.bodyMedium!
                                          .copyWith(
                                        fontSize: 17.0,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          size: 10.0,
                                        ),
                                        const SizedBox(
                                          width: 3.0,
                                        ),
                                        Text(
                                          'India, Guntur',
                                          style: themeData.textTheme.bodyMedium!
                                              .copyWith(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 65.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11.0),
                                    color: ColorConst.blackColor2,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '\$5/hr',
                                      style: themeData.textTheme.bodyMedium!
                                          .copyWith(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
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
