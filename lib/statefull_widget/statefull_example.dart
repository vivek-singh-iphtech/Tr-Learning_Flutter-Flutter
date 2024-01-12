import 'package:flutter/material.dart';

class StatefullExample extends StatefulWidget {
  const StatefullExample({Key? key}) : super(key: key);

  @override
  _StatefullExampleState createState() => _StatefullExampleState();
}

class _StatefullExampleState extends State<StatefullExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stateful Example'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _incrementCounter();
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Counter Value:'),
            Text(
              '$_counter',
            ),

            const SizedBox(height: 16), // Add some spacing between the FABs

            // Second FloatingActionButton
            
            FloatingActionButton.extended(
              onPressed: () {
                _resetCounter();
              },
              label: const Text('Reset'),
              icon: const Icon(Icons.restore),
            ),
          ],
        ),
      ),
    );
  }
}


//Benefits of stateful

// can play with state change it and store it 
// have LifeCycle Methods


//limitations of set state

// rebuild the whole ui that require no changes
// synchronous rebuild of ui every time
 
