import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            child: Center(
                child: FlareActor(
              'assets/anim1.flr',
              animation: 'Untitled',
              fit: BoxFit.contain,
              color: Colors.red,
              isPaused: false,
              alignment: Alignment.center,
            )),
          ),
          Container(
            height: 200,
            child: Center(
                child: FlareActor(
              'assets/jumping.flr',
              animation: 'jump',
              fit: BoxFit.contain,
              color: Colors.red,
              snapToEnd: true,
              isPaused: false,
              alignment: Alignment.center,
            )),
          ),
        ],
      ),
    );
  }
}
