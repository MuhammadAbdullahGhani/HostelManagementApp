import 'package:flutter/material.dart';
import 'package:hostel/routing.dart';
class Loginfirst extends StatefulWidget {
  const Loginfirst({Key?key}):super(key: key);
  @override
  _LoginfirstState createState()=> _LoginfirstState();
  }


class _LoginfirstState extends State<Loginfirst>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello, World!',
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 114, 132, 236),
        appBar: AppBar(
        
          backgroundColor: Color.fromARGB(255, 136, 152, 242),
          toolbarHeight: 18,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 136, 152, 242),
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to HMS',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color:  Colors.white,
                  
                ),
              ),
            
              SizedBox(height: 24,width: 16
              ,),
        
              ElevatedButton(
                
                onPressed: () {
                  
                 Navigator.of(context).pushNamed(Approutes.authsecond);
                  
                },
                 
                child: Text('Continue',
                style: TextStyle(color:Colors.red,
                fontSize: 20),
               
                ),
               
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}