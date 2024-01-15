import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

void incrementCounter(){
  //setstate rebuids the widget
  setState(() {
    _counter++;
  });
}
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You pushed the button this many times"),      
            //counter value
            Text(_counter.toString(),
            style: TextStyle(
              fontSize: 40
            ),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
              onPressed: incrementCounter, 
              child: Text("Increment", style: TextStyle(color: Colors.white),),
              )
              
          ],
        ),
      ),
    );
  }
}