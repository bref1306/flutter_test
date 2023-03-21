import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return  Scaffold(
      body: Column(
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            key: const Key('email_id'),
            decoration: const InputDecoration(hintText: 'Enter Email Id'),
          ),
          TextFormField(
            controller: _passwordController,
            key: const Key('password'),
            decoration: const InputDecoration(hintText: 'Enter password'),
          ),
          ElevatedButton(onPressed: () {}, child: const Text(key: Key('login'), 'Login')),
        ],
      ),
    );
  }
}