import 'package:flutter/material.dart';
import 'package:study6/pages/home_page.dart';
import 'package:study6/pages/profile_page.dart';
import 'package:study6/pages/settings_page.dart';

// FirstPage 是一个有状态的Widget
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  // 创建状态
  @override
  State<StatefulWidget> createState() => _FirstPageState();
}

// FirstPageState 继承 State<FirstPage>
// 这里也用来构建Widget树
class _FirstPageState extends State<FirstPage> {
  // 选择的底部导航栏页面索引
  int _selectedIndex = 0;

  // 定义导航栏显示可以显示哪些页面
  final List _pages = [
    // 主页页面
    HomePage(
      title: "主页",
    ),
    // 资料页面
    ProfilePage(),
    // 设置页面
    SettingsPage()
  ];

  // 跳转导航栏中的页面
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: _pages[_selectedIndex],

      // 定义底部导航栏列表物品
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // Home页面
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "主页",
          ),
          // 资料页面
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "资料"
          ),
          // 设置页面
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "设置"
          ),
        ],
      ),
    );
  }

}