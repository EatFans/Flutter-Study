import 'package:flutter/material.dart';
import 'package:study1/MyHome.dart';

void main() {
  runApp(const MyApp());
}

// app应用根UI入口
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 构建ui
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: '主页'),
    );
  }
}

