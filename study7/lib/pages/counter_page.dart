import 'package:flutter/material.dart';

// CounterPage 有状态的Widget, 这里为StatefulWidget
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  // 变量
  int _counter = 0;

  // 方法函数
  void _add(){
    // 设置状态重建组件
    setState(() {
      _counter ++;
    });
  }

  // UI (用户交互）
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 文本
            Text(
                "计数器数量：",
              style: TextStyle(
                fontSize: 30
              ),
            ),

            // 计数counter值显示
            Text(
                _counter.toString(),
              style: TextStyle(
                fontSize: 30
              ),
            ),

            // 增加按钮
            ElevatedButton(
                onPressed: _add,
                child: Text("添加"),

            ),
          ],
        ),
      )
    );
  }
}
