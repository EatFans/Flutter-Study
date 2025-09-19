import 'package:flutter/material.dart';
import 'package:study4/pages/first_page.dart';
import 'package:study4/pages/second_page.dart';


void main(){
  runApp(MyApp());
}

// app的根目录
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      // 配置路由路径
      routes: {
        '/firstPage': (context) => FirstPage(),
        '/secondPage': (context) => SecondPage(),
      },
    );
  }
}
