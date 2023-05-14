import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hostel/routing.dart';
class Login2 extends StatefulWidget {
  const Login2({Key?key}):super(key: key);
  @override
  _Login2State createState()=> _Login2State();
  }


class _Login2State extends State<Login2>{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Hello, World!',
        debugShowCheckedModeBanner: false,
      home: Scaffold(

backgroundColor: Colors.white,
appBar: AppBar(

  backgroundColor: Color.fromARGB(255, 136, 152, 242),
  toolbarHeight: 250,
  leading: Center(
    child: Align(
      alignment: Alignment.center,
      child: CircleAvatar(
        backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/man-with-big-phone-using-social-media-network-style_250246-72.jpg?w=1380'),
        

      ),
    ),
  ),
  
       title: Text(
    'Student',
    style: TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.bold
    ),
  ),

),
body: Column(
  
  mainAxisAlignment:MainAxisAlignment.center,
    crossAxisAlignment:CrossAxisAlignment.center,
  children:[
Text(
  'Do you want to login as',
  style:TextStyle(
   
    fontSize: 24,
color: Colors.red,
  )
),

 ElevatedButton(
                
                onPressed: () {
                  
                  Navigator.of(context).pushNamed(Approutes.authfifth);
                  
                },
                style: ElevatedButton.styleFrom(
  primary:  Color.fromARGB(255, 136, 152, 242),
),
                 
                child: Text('User',
                style: TextStyle(color:Colors.red,
                fontSize: 20),
               
                ),
               
                ),
 Divider(
              color: Colors.red,
              indent: 25, 
              endIndent: 25,
              thickness: 1,
 ),
                Text(
                  
  'OR',
  
  style:TextStyle(
   
    fontSize: 18,
color: Colors.red,
  )
),

      ElevatedButton(
                
                onPressed: () {
                  
                  Navigator.of(context).pushNamed(Approutes.authsignup);
                  
                },
                style: ElevatedButton.styleFrom(
  primary:  Color.fromARGB(255, 136, 152, 242),
),
                 
                child: Text('Create Account',
                style: TextStyle(color:Colors.red,
                fontSize: 20),
               
                ),
               
                ),          
  ],
 ), 
  ),

  );

          
}
}