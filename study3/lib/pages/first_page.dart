import 'package:flutter/material.dart';
import 'package:study3/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("跳转到第二个页面"),
          onPressed: () {
            // 按下跳转到第二个页面
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
            );
          },
        )
      ),
    );
  }
}
