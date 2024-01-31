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
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.red,
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
    return Scaffold(
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
