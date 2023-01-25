import 'package:code_challenge/app/home/presenter/controller/home_controller.dart';
import 'package:code_challenge/app/home/presenter/home_page.dart';
import 'package:code_challenge/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(
    MultiProvider(
      providers: [  
        ChangeNotifierProvider(create: (context) => HomeController()),
      ], 
      child: const MainWidgetApp(),
    )
  );
} 