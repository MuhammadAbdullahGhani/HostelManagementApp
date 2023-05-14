import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hostel/routing.dart';
class Login1 extends StatefulWidget {
  const Login1({Key?key}):super(key: key);
  @override
  _Login1State createState()=> _Login1State();
  }


class _Login1State extends State<Login1>{
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
    'Welcome',
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
  'Choose Account type',
  style:TextStyle(
   
    fontSize: 26,
color: Colors.red,
  )
),

ElevatedButton(onPressed:()=>{
 Navigator.of(context).pushNamed(Approutes.auththird),
},
style: ElevatedButton.styleFrom(
  primary:  Color.fromARGB(255, 136, 152, 242),
),
child: Text('Manager',
style: TextStyle(color:Colors.red,
fontSize:20),
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
ElevatedButton(onPressed:()=>{
 Navigator.of(context).pushNamed(Approutes.auththird),
},
style: ElevatedButton.styleFrom(
  primary:  Color.fromARGB(255, 136, 152, 242),
),
child: Text('Student',
style: TextStyle(color:Colors.red,
fontSize:20),
),
),
  ]
    ), 
  ),

  );

          
}
}