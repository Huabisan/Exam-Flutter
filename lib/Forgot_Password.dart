import 'package:exam_flutter2/login.dart';
import 'package:flutter/material.dart';

void login() {
  runApp(Forgot());
}

class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.0),
        Text(
          'Forgot',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10), // Add spacing between the texts
        Text(
          'Password ?',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30.0),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Email or Username',
            labelText: 'Email or Username',
            border: OutlineInputBorder(),
            prefixIcon: Image.asset('img/Mail.png'),
          ),
        ),
        SizedBox(height: 10.0),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Row(
            children: [
              Text('* ',
              style: TextStyle(
              color: Colors.orange,
              ),
              ),
              Text('We will send you a message to set or reset')
            ],
          ),
        ),
        Column(
          children: [
            Text('your new password')
          ],
        ),
        SizedBox(height: 10.0),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffF83758),
              minimumSize: Size(317.0, 55.0),
            ),
            onPressed: () {
              print('Login button tapped');
            },
            child: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
