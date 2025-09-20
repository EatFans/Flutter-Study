import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// TODO任务块
class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?) onChanged;
  Function(BuildContext)? onDelete;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.onDelete
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top: 25),
      // 滑动
      child: Slidable(
        // 结束滑动行为显示的面板
        endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                  onPressed: onDelete,
                icon: Icons.delete,
                backgroundColor: Colors.red,
              )
            ]
        ),
        // 主要容器
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
      ),
    );

  }
}
