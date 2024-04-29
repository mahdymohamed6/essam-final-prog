import 'package:final_projectt/Home/home_screen.dart';
import 'package:final_projectt/Register/Login_page.dart';
import 'package:final_projectt/Theme.dart';
import 'package:flutter/material.dart';

import 'Register/Signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: MyTheme.LightMode,
    debugShowCheckedModeBanner: false,
      routes: {
      LoginScreen.RouteName: (context)=>LoginScreen(),
        SignupScreen.RouteName: (context)=>SignupScreen(),
        HomeScreen.RouteName: (context)=>HomeScreen(),
      },
      initialRoute: LoginScreen.RouteName,
    );
  }
}



