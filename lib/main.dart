import 'package:flutter/material.dart';
import 'package:flutter_learning/statefull_widget/lifecycle_methods.dart';
import 'package:flutter_learning/stateless_widget/stateless_example.dart';
import 'package:flutter_learning/styled_widgets/Box.dart';

void main() {
  runApp(const MyCustomApp());
}

class MyCustomApp extends StatelessWidget {
  const MyCustomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Flutter Dev'),
      ),
      body: Center(
        child: Column(
          children: [
            //Text Button (since FlatButton is deprecated so we use TextButton which have same result)
            TextButton(
                onPressed: () {
                  _goToStateless();
                },
                child: Container(
                  color: Colors.blueAccent,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'stateless',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                )),

            //Elevated Button
            ElevatedButton(
              onPressed: () {
                _goToStateful();
              },
              style: ElevatedButton.styleFrom(
                elevation: 12.0,
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'stateful',
                style: TextStyle(color: Colors.white),
              ),
            ),

            OutlinedButton(
               child: const Text(
                "All Boxes",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              onPressed: () {
                _goToBox();
              },
            ),
          ],
        ),
      ),
    );
  }

void _goToStateless() {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const StatelessExample()));
}
void _goToStateful() {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const LifecycleMethods()));
}
void _goToBox() {
   Navigator.push(context,
      MaterialPageRoute(builder: (context) => const Box()));
}
}



