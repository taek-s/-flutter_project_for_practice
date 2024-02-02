import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget RainbowCard(int index) {
    List<Color> rainbowColors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      const Color.fromRGBO(8, 0, 116, 1.0),
      Colors.purple
    ];

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.grey,
      elevation: 10.0,
      child: Center(
        child: Container(
          width: 100.0,
          height: 100.0,
          color: rainbowColors[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('플러터 연습중'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                icon: const Icon(Icons.account_circle))
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.date_range),
              ),
              Tab(
                text: '메뉴',
              ),
              Tab(
                icon: Icon(Icons.info),
                text: '정보',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [for (int i = 0; i < 7; i++) RainbowCard(i)],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Notification',
            ),
          ],
        ),
      ),
    );
  }
}
