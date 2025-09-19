import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面"),
      ),
      // 抽屉
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Center(
          child: Column(
            children: [
              // 抽屉栏顶部头部
              DrawerHeader(
                  child: Icon(
                      Icons.favorite,
                    size: 48,
                  ),
              ),
              // 主页
              ListTile(
                leading: Icon(Icons.home),
                title: Text("主 页"),
                onTap: () {
                  // 弹出抽屉
                  Navigator.pop(context);
                  // 跳转主页
                  Navigator.pushNamed(context, '/home');
                }
              ),
              // 设置页面
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("设 置"),
                onTap: () {
                  // 跳转设置页面
                  Navigator.pushNamed(context, '/settings');
                }
              )
            ],
          ),
        )
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
