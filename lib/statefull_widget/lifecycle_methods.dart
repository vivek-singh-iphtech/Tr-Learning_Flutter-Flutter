import 'package:flutter/material.dart';

class LifecycleMethods extends StatefulWidget {
  const LifecycleMethods({ Key? key }) : super(key: key);

  @override
  _LifecycleMethodsState createState() => _LifecycleMethodsState();
}

class _LifecycleMethodsState extends State<LifecycleMethods> {
  // create state

  int _counter =0;

  @override
  void initState()
  {
    // create initState()
    super.initState();
    print("initstate");
  }

  @override
  void didChangeDependencies()
  {
    // didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }


 @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text('Lifecycle Methods'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value: $_counter'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // setState triggers a rebuild
                setState(() {
                  _counter++;
                });
              },
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );

  }

  @override
  void didUpdateWidget(covariant LifecycleMethods oldWidget)
  {
    // didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget'); // will not call as there is no changes to the widget configuration
  }

  //  deactivate
  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  //  dispose
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }
}  




//LifeCycle Methods

// createState() => creating stateful widget
// mounted => boolean turns true when when build context is assigned to widget 
// initState() => method call just before widget build | can initialize the var
// didChangeDependencies() => when the state object get changes
// build() => displays the UI on screen | rebuilds after state
// didUpdateWidget() => remove the old widget and get the new widget
// setState() => call when we need to update the ui
// deactivate() => method called when widget is removed from widget tree | can be reinserted quickly for rebuild
// dispose() => called when state object is removed completely
