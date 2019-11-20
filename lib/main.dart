import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
      routes: ({
        LoginPage.id: (context) => LoginPage(),
        HomeScreen.id: (context) => HomeScreen(),
      }),
    );
  }
}
