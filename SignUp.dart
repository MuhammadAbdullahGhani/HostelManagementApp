import 'package:flutter/material.dart';
import 'Home.dart'; // Importing Homepage file here
import 'package:hostel/routing.dart';
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() =>
      _SignUpPageState(); // whole route of the app
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isNameValid = true; // bool flag
  bool isEmailValid = true; // bool flag
  bool isPasswordValid = true; // bool flag

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool _validateInputs() {
    // function for validating inputs for sign up
    bool isValid = true;
    // conditions for validating inputs
    if (_nameController.text.isEmpty) {
      setState(() => isNameValid = false);
      isValid = false;
    }
    if (_emailController.text.isEmpty || !_emailController.text.contains('@')) {
      setState(() => isEmailValid = false);
      isValid = false;
    }
    if (_passwordController.text.isEmpty ||
        _passwordController.text.length < 6) {
      setState(() => isPasswordValid = false);
      isValid = false;
    }
    return isValid;
  }

  void _signUp() {
    if (_validateInputs()) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Sign Up Successful'),
            content: Text('Welcome, ${_nameController.text}!'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(); // Navigation code to home page
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
        toolbarHeight: 160,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                'SignUp',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 101, 132),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Username :',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
                color: Color.fromARGB(255, 226, 227, 228),
              ),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Enter your username here',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: InputBorder.none,
                ),
              ),
            ),
            if (!isNameValid)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please enter a valid name',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            SizedBox(height: 5.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email :',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
                color: Color.fromARGB(255, 226, 227, 228),
              ),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Enter your email here',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: InputBorder.none,
                ),
              ),
            ),
            if (!isEmailValid)
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
                'Password :',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
                color: Color.fromARGB(255, 226, 227, 228),
              ),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your password here',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: InputBorder.none,
                ),
              ),
            ),
            if (!isPasswordValid)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password must be at least 6 characters',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            SizedBox(height: 15.0),
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
                  'Sign Up',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: _signUp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUpPage(),
  ));
}
