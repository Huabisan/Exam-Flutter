import 'package:exam_flutter2/login.dart';
import 'package:flutter/material.dart';

void login() {
  runApp(Register());
}

class Register extends StatelessWidget {
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
          'Create An ',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10), // Add spacing between the texts
        Text(
          'Account',
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
        SizedBox(height: 30.0),
        TextFormField(
          obscureText: !_isPasswordVisible,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            border: OutlineInputBorder(),
            prefixIcon: Image.asset('img/Group 2.png'),
            suffixIcon: IconButton(
              icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
              onPressed: _togglePasswordVisibility,
            ),
          ),
        ),
        SizedBox(height: 30.0),
        TextFormField(
          obscureText: !_isPasswordVisible,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            border: OutlineInputBorder(),
            prefixIcon: Image.asset('img/Group 2.png'),
            suffixIcon: IconButton(
              icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
              onPressed: _togglePasswordVisibility,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Align(
          child: Row(
            children: [
              Text('By clicking the '),
              GestureDetector(
                child: Text(
                  'Register ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF83758),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
              ),
              Text('button, you agree')
            ],
          ),
        ),
        Column(
          children: [
            Text('to the public offer')
          ],
        ),
        SizedBox(height: 10.0),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffF83758),
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
        SizedBox(height: 50.0),
        Center(
          child: Text(
            '- OR Continue with -',
          ),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  print('Google button tapped');
                },
                child: Image.asset(
                  "img/Google.png",
                  width: 40,
                  height: 40,
                ),
              ),
              InkWell(
                onTap: () {
                  print('Facebook button tapped');
                },
                child: Image.asset(
                  "img/Facebook.png",
                  width: 40,
                  height: 40,
                ),
              ),
              InkWell(
                onTap: () {
                  print('Facebook button tapped');
                },
                child: Image.asset(
                  "img/Facebook (1).png",
                  width: 40,
                  height: 40,
                ),
              ),
              // Add more buttons for other authentication methods here
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('I Already Have an Account '),
              GestureDetector(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF83758),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login2()),
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
