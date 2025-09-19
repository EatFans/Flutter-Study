import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面"),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                // 使用路径名称跳转，这里类似于 Vue 中的 router
                Navigator.pushNamed(context, "/secondPage");
              },
              child: Text("点击我跳转到到第二个页面")
          ),
        ),
      ),
    );
  }
}
