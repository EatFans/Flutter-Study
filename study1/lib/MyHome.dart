import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


// Home页面状态
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // 增加计数
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // 减少计数
  void _reduceCounter() {
    setState(() {
      _counter --;
    });
  }

  // 重置计数器
  void _reset() {
    setState(() {
      _counter = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          BackButton(color: Colors.red, onPressed: _reset),
          IconButton(onPressed: _reset, icon: const Icon(Icons.backpack)),
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reset',
            onPressed: () => _reset(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('计数器数量:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
                onPressed: _reduceCounter,
                icon: const Icon(Icons.reduce_capacity)
            ),
            IconButton(
                onPressed: _incrementCounter,
                icon: const Icon(Icons.add)
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
