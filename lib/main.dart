import 'package:doctor_profile/pages/loading_page.dart';
import 'package:doctor_profile/pages/profile/home_page.dart';
import 'package:doctor_profile/pages/registration_page/login_page.dart';
import 'package:doctor_profile/pages/registration_page/registration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoadingPage.id,
      routes: {
        LoadingPage.id: (context) => LoadingPage(),
        LoginPage.id: (context) => LoginPage(),
        RegistrationPage.id: (context) => RegistrationPage(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}

