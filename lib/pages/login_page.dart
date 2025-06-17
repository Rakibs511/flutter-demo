import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          height: 80,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Login Page"),
            ElevatedButton(
              onPressed: () => context.push('/homePage'),
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
