import 'package:app_test/validator.dart';
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
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              key: const Key('email_id'),
              decoration: const InputDecoration(hintText: 'Enter Email Id'),
              validator: (value) => Validator.validateEmail(value ?? ""),
            ),
            TextFormField(
              controller: _passwordController,
              key: const Key('password'),
              decoration: const InputDecoration(hintText: 'Enter password'),
              validator: (value) => Validator.validatePassword(value ?? ""),
            ),
            ElevatedButton(
              key: const Key('login_button'), 
              onPressed: () {
                _formKey.currentState?.validate();
              }, 
              child: const Text(key: Key('login'), 'Login'),
            ),
          ],
        ),
      ),
    );
  }
}