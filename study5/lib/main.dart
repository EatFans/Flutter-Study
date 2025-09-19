import 'package:flutter/material.dart';
import 'package:study5/pages/first_page.dart';
import 'package:study5/pages/home_page.dart';
import 'package:study5/pages/settings_page.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      // 配置路由
      routes: {
        '/home': (context) => HomePage(),
        '/settings': (context) => SettingsPage()
      },
    );
  }
}

