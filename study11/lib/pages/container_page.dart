import 'package:flutter/material.dart';
import 'package:study11/widgets/custom_navigation_bar.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<StatefulWidget> createState() => _ContainerState();
}

class _ContainerState extends State<ContainerPage>{
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Center( child: Text("主页") ),
    const Center(child: Text("搜索")),
    const Center(child: Text("学习")),
    const Center(child: Text("我的")),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],

      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onIconTapped: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        child: Icon(Icons.add),
      ),
      // 设置 floatingActionButton 在底部导航栏中间
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

