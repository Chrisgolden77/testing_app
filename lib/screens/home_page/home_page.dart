import 'package:flutter/material.dart';

import '../../widgets/image_banner.dart';
import '../../widgets/text_section.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState(title);
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _title = '';
  _MyHomePageState(this._title);

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

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
        backgroundColor: Colors.deepPurple,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(_title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner("assets/images/battleaxe.jpg"),
          Center(
            child: Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          TextSection(
            "I'm the title",
            "i'm a hot body!!!",
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.remove_circle,
                size: 35,
              ),
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
            ),
            IconButton(
              icon: Icon(Icons.add, size: 35),
              onPressed: _incrementCounter,
              tooltip: 'Increment',
            ),
          ],
        ),
        color: Colors.deepPurple,
        notchMargin: 4.0,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'Reset',
        child: Icon(Icons.replay),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
