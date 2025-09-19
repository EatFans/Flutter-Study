import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/firstPage');
              },
              child: Text("跳转到第一个页面")
          ),
        ),
      ),
    );
  }
}
