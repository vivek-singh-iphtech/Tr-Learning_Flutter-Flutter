import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Box style'),
      ),
      body: Center(
        child: Column(children: [
          //constrained Box
          //use when child is bigger than container and wants that container should also increase acc to child do use constrained 
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 75,
              minHeight: 0.0,
              maxWidth: 200,
              minWidth: 0.0,
            ),
            child: Container(
              alignment: Alignment.center,
              // height: 100,
              // width: 300,
              color: Color.fromARGB(255, 6, 255, 180),
              child: const Text(
                'This is a Constrained Box',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),

          //sizeBox
          // the width and height os size box is for his child
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200.0,
              height: 100.0,
              child: Text('Sized Box Widget',style: TextStyle(
                color: Colors.black,
              ),),
            ),
          ),

          //
        ]),
      ),
    );
  }
}
