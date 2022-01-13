// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Row(
        children: [
          Column(
            children: [
              Center(
                child: Text('Login Page'),
              ),
              ElevatedButton(
                  onPressed: () => context.go('/main'),
                  child: const Text('Login'))
            ],
          )
        ],
      ),
    );
  }
}
