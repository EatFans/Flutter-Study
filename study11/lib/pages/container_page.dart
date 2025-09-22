import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<StatefulWidget> createState() => _ContainerState();
}

class _ContainerState extends State<ContainerPage>{

  // 当按钮点击时候
  void _onIconTapped(int index){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () => _onIconTapped(0),
            ),

            IconButton(
              icon: Icon(
                  Icons.search,
                color: Colors.white
              ),
              onPressed: () => _onIconTapped(1),
            ),

            SizedBox(), // 增加一些间隔

            IconButton(
              icon: Icon(
                Icons.school,
                color: Colors.white,
              ),
              onPressed: () => _onIconTapped(3),
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () => _onIconTapped(2),
            )
          ],
        ),
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

