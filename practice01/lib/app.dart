import 'package:flutter/material.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플러터 연습 프로젝트',
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent)),
      initialRoute: '/',
      routes: {
        "/": (BuildContext context) => const HomePage(),
        "/login": (BuildContext context) => const Login(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle))
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
              children: [for (int i = 0; i < 7; i++) RainbowCard(colorNum: i)],
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

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: '아이디',
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '비밀번호',
            ),
          ),
        ],
      ),
    );
  }
}

// TODO 만들어보고 있는중..
class RainbowCard extends StatefulWidget {
  const RainbowCard({
    super.key,
    required int colorNum,
  });

  @override
  State<RainbowCard> createState() => _RainbowCardState();
}

class _RainbowCardState extends State<RainbowCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      elevation: 10.0,
      child: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
