import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onIconTapped;

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onIconTapped,
  });


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.teal,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home,
                color: currentIndex == 0 ? Colors.amber : Colors.white),
            onPressed: () => onIconTapped(0),
          ),
          IconButton(
            icon: Icon(Icons.search,
                color: currentIndex == 1 ? Colors.amber : Colors.white),
            onPressed: () => onIconTapped(1),
          ),
          const SizedBox(width: 40), // 为 FloatingActionButton 预留空间
          IconButton(
            icon: Icon(Icons.school,
                color: currentIndex == 2 ? Colors.amber : Colors.white),
            onPressed: () => onIconTapped(2),
          ),
          IconButton(
            icon: Icon(Icons.person,
                color: currentIndex == 3 ? Colors.amber : Colors.white),
            onPressed: () => onIconTapped(3),
          ),
        ],
      ),
    );
  }
}