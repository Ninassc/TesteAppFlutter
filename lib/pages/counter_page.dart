import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    //rebuild the widget
    setState(() {
      _counter++;
    });
    }

  void _resetCounter(){
    setState(() {
      _counter = 0;
    });
  }

  //User Interface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tou pushed the button this many times: "),
            Text(_counter.toString(), style: TextStyle(fontSize: 40)),

            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment"),
            ),

            ElevatedButton(onPressed:_resetCounter , child: Text("Reset"),),
          ],
        ),
      ),
    );
  }
}
