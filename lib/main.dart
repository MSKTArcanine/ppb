import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/dynamic_list.dart';
import 'package:pomme_poire_ananas/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final List<int> _fruits;
  late int _counter;
  late List<Color> _colors;

  @override
  void initState() {
    super.initState();
    _counter = 0;
    _fruits = [_counter];
    _colors = Utils().getColorButton();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _fruits.add(_counter);
      _colors = Utils().getColorButton();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Expanded(child: DynamicList(list: _fruits))],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: _colors[1],
        child: Icon(Icons.add, color: _colors[0]),
      ),
    );
  }
}
