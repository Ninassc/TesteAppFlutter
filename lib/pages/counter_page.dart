import 'package:basic_app/utils/my_bottom_nav_bar.dart';
import 'package:basic_app/utils/my_drawer.dart';
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
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavBar(currentIndex: 3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text("You pushed the button this many times: "),
            Text(_counter.toString(), style: TextStyle(fontSize: 40)),

            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 20
              ),
               child: ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 67, 128, 112),
                  foregroundColor: Colors.white,
                  minimumSize: Size(200, 50),
                ),
                child: Text("Increment"),
              ),
            ),
            
            //SizedBox(height: 20), // <-- Aqui está o "margin" (espaçamento)

            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 20
              ),
              child: ElevatedButton(
                onPressed: _resetCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 67, 128, 112), // Muda a cor de fundo do botão
                  foregroundColor: Colors.white, // Muda a cor do texto do botão
                  minimumSize: Size(200, 50), // Define a largura (200) e altura (50)
                ),
                child: Text("Reset"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
