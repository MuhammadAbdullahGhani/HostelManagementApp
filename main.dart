import 'package:flutter/material.dart';
import 'loginfirst.dart';
import 'package:hostel/routing.dart';
void main() {
  runApp(HMS());
}

class HMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      debugShowCheckedModeBanner: false,
      routes: Approutes.define(),
      home: Loginfirst(),
    );
  }
}

class HMSHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
        255,
        169,
        149,
        241,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to HMS',
              style: TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 101, 132)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginfirst()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
