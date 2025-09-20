import 'package:flutter/material.dart';
import 'package:study9/pages/widgets/dialog_box.dart';
import 'package:study9/pages/widgets/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // 文本控制器
  final _controller = TextEditingController();

  List todoList = [
    ["测试1", false],
    ["测试2", false],
  ];

  // 开启创建ToDo弹窗
  void _createNewTodo(){
    showDialog(context: context, builder: (context) {
      return DialogBox(
        controller: _controller,
        onSave: saveNewTodo,
        onCancel: () => Navigator.of(context).pop(),
      );
    });
  }

  // 保存新ToDo
  void saveNewTodo(){
    setState(() {
      String todoMessage = _controller.text;
      todoList.add([todoMessage, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // 改变单选框状态
  void _checkBoxChanged(bool? value,int index){
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  // 删除Todo
  void _deleteTodo(int index){
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],

      // 顶部头部栏
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        title: Text(
            "To Do",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      // 页面主体内容
      // 渲染列表
      body: ListView.builder(
        // 列表物品数量
        itemCount: todoList.length,
        // 物品构建
        itemBuilder: (context, index) {
          // 构建TodoTile
          return TodoTile(
              taskName: todoList[index][0],
              taskCompleted: todoList[index][1],
              onChanged: (val) => _checkBoxChanged(val,index),
              onDelete: (context) => _deleteTodo(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createNewTodo,
        child: Icon(
            Icons.add,
          fontWeight: FontWeight.bold,
        ),
      ) 
    );
  }
}
