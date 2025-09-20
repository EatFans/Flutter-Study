import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  // 文本输入控制器去获取文本来使用
  TextEditingController _myController = TextEditingController();

  // 设置文本变量来存储
  String _textMessage = "";

  void _greetUser() {
    setState(() {
      String text = _myController.text;
      _textMessage = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 剧中
      body: Center(
        // 内边距
        child: Padding(
          // 内边距距离设置
          padding: const EdgeInsets.all(25.0),
          // 垂直布局
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // 显示文本
              Text(_textMessage),

              // 文本输入
              TextField(
                // 设置文本控制器
                controller: _myController,
                // 装饰
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "请输入文本"
                ),
              ),

              // 按钮
              ElevatedButton(onPressed: _greetUser, child: Text("点击"))
            ],
          )
        ),
      ),
    );
  }
}
