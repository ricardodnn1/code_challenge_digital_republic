import 'package:code_challenge/app/home/presenter/home_page.dart';
import 'package:flutter/material.dart';

class MainWidgetApp extends StatelessWidget {
  const MainWidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CODE CHALLENGE',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, 
      initialRoute: '/',
      routes: {
         "/": (context) => const HomePage(),
         "/home":(context) => const HomePage()
      },
    );
  }
}