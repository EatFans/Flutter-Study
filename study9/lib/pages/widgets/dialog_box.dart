import 'package:flutter/material.dart';
import 'package:study9/pages/widgets/m_button.dart';

class DialogBox extends StatelessWidget {

  final controller;

  VoidCallback onSave;

  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("新建一个待办事项"),
      backgroundColor: Colors.yellow[200],
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "请输入待办事项",
              ),
            ),

            SizedBox(height: 20),

            // 按钮行 （确定、取消按钮）
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MButton(
                  text: "确定",
                  onPressed: onSave
                ),
                MButton(
                  text: "取消",
                  onPressed: onCancel
                )
              ],
            )
          ],
        ),
      ),
      actions: [

      ],
    );
  }
}
