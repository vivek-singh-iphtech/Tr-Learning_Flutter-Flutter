import 'package:flutter/material.dart';

class StatelessExample extends StatelessWidget {
const StatelessExample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatelessWidget Example'),
      ),
      body: const Center(
        child: Text('Hello, Stateless World!'),
      ),
    );
  }
}


// Stateless widgets are those widgets whose state can’t be changed or altered once they are built.

// These widgets are immutable once they are built.

// Any change in data, widgets, icons, or variables do not change the state of the app or UI.

// They simply override the build() method and return a widget.


// limitations?
// No Mutable State (can't change the state of the app)
// No Animations in stateless
// No lifecycle Method
// Rebuilds the entire ui compared to stateful
