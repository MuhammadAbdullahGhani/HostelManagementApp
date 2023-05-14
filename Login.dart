 import 'dart:math';
 import 'package:flutter/material.dart';
 import 'package:hostel/routing.dart';
 import 'package:hostel/login2.dart';
 import 'login2.dart';
import 'SignUp.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(110, 0, 26, 255),
        title: Center(
          child: Text(
            'Login',
            style: TextStyle(fontSize: 40),
          ),
        ),
        toolbarHeight: 160,
      ),
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isEmailValid = true;
  bool _isPasswordValid = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool _validateInputs() {
    bool isValid = true;
    if (_emailController.text.isEmpty || !_emailController.text.contains('@')) {
      setState(() => _isEmailValid = false);
      isValid = false;
    }
    if (_passwordController.text.isEmpty ||
        _passwordController.text.length < 6) {
      setState(() => _isPasswordValid = false);
      isValid = false;
    }
    return isValid;
  }

  void _login() {
    if (_validateInputs()) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login Successful'),
            content: Text('Welcome, ${_emailController.text}!'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ],
          );
        },
      );
    }
  }

  void _navigateToSignUp() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 169, 149, 241),
        title: Center(
          child: Text(
            'Hostelite',
            style: TextStyle(fontSize: 40),
          ),
        ),
        toolbarHeight: 170,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 101, 132),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email:',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 226, 227, 228),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Enter email here ',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: InputBorder.none,
                ),
              ),
            ),
            if (!_isEmailValid)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please enter a valid email address',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            SizedBox(height: 5.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password:',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 226, 227, 228),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter password here ',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: InputBorder.none,
                ),
              ),
            ),
            if (!_isPasswordValid)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password must be at least 6 characters',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            SizedBox(height: 27.0),
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 169, 149, 241),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: _login,
              ),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: _navigateToSignUp,
              child: Text(
                'New Register?',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
