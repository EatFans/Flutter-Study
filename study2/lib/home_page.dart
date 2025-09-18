
import 'package:flutter/material.dart';
import 'package:study2/person_card.dart';

class HomePage extends StatefulWidget {

  final String title;

  const HomePage({super.key, required this.title});

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
          color: Colors.white,
          child: Column(
            children: [
              PersonCard(
                avatar: 'https://avatars.githubusercontent.com/u/122099628',
                name: "EatFan",
                job: "全栈开发工程师",
                phoneNumber: "123-456-7890",
                email: "eatfan0921@163.com"
              )
            ],
          ),
        )
      ),
    );

  }
}