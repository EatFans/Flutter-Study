import 'package:flutter/material.dart';

// TODO任务块
class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?) onChanged;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.yellow[400],
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            )
        ),
        padding: const EdgeInsets.all(24),
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 单选框
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
              // 任务名字
              Text(
                  taskName,
                style: TextStyle(
                  fontSize: 16,
                  decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,

                ),
              )
            ]
        ),
      ),
    );

  }
}
