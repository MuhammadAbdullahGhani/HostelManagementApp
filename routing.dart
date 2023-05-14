
import 'package:flutter/material.dart';
import 'package:hostel/Home.dart';
import 'package:hostel/SignUp.dart';
import 'package:hostel/login2.dart';
import 'loginfirst.dart';
import 'login1.dart';
import 'login2.dart';
import 'Login.dart';
class Approutes{
  Approutes._();
  static const String authfirst='/auth-first';
    static const String authsecond='/auth-second';
    static const String auththird='/auth-third';
static const String authfourth='/auth-fourth';
static const String authfifth='/auth-fifth';
static const String authsignup='/auth-signup';
    static Map<String, WidgetBuilder> define(){
      return{
      authfirst:(context)=>Loginfirst(),
     authsecond:(context)=>Login1(),
      auththird:(context)=>Login2(),
      authfourth:(context)=>HomePage(),
authfifth:(context) => LoginPage(),
authsignup:(context)=>SignUpPage(),
      };
    }
    
}