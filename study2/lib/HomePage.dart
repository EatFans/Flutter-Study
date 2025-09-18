
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage>  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                margin: const EdgeInsets.all(16),
                color: Colors.white60,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    // 头像
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/122099628?v=4'
                      ),
                    ),
                    const SizedBox(height: 12,width: 200),
                    // 名称
                    const Text(
                        "EatFan",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    const SizedBox(height: 8),
                    // 职位
                    const Text(
                      "全栈开发工程师",
                      style:  TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    const Divider(height: 30, thickness: 1),
                    // 联系方式
                    ListTile(
                      leading: const Icon(Icons.phone, color: Colors.blue),
                      title: const Text(
                          "123-456-7890",
                          style: TextStyle(
                              fontWeight: FontWeight.w400
                          )
                      ),
                    ),
                    ListTile(
                        leading: const Icon(Icons.email, color: Colors.blue),
                        title: const Text("eatfan0921@163.com")
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );

  }
}