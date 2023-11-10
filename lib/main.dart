import 'package:flutter/material.dart';
import 'package:to_do_app/views/Screens/login_page.dart';
import 'package:to_do_app/views/Screens/sign_up_page.dart';
import 'package:to_do_app/views/Screens/Getting_started.dart';

import 'views/Screens/Home_page.dart';
import 'views/Screens/splace_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'To Do App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Splash(),
      routes: {
        GettingStartedScreen.routeName: (ctx) => GettingStartedScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
        Home_page.routeName: (ctx) => Home_page(),
      },
    ),
  );
}
