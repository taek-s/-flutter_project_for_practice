import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인 페이지'),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: '아이디',
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: '비밀번호',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text('로그인'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
