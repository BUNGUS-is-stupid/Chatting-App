import 'package:flutter/material.dart';
import 'package:messenger_complete_rebuild/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Garry\'s chat'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            AuthMethods().signInWithGoogle(context);
          },
          child: Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Sign In with Google',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

//There will be two titles, one in signin.dart (here), and one in home.dart