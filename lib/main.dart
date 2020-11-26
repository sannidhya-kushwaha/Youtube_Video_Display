import 'package:flutter/material.dart';
import 'package:easy_pip/easy_pip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Interface',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube'),
      ),
      body: PIPStack(
        backgroundWidget: Center(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                isEnabled = !isEnabled;
              });
            },
            child: Text('Click here to enable PIP'),
          ),
        ),
        pipWidget: isEnabled
            ? Container(
                color: Colors.pink,
              )
            : Container(),
        pipEnabled: isEnabled,
        pipExpandedContent: Card(
          color: Colors.white,
          child: Column(
            children: [
              Text(
                'Sannidhya Kushwaha',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(),
            ],
          ),
        ),
        onClosed: () {
          setState(() {
            isEnabled = !isEnabled;
          });
        },
      ),
    );
  }
}
