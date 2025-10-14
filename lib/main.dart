import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDoList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const MyHomePage(title: 'ToDoList'),
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
  void _incrementCounter() {}

  // bool _isCheked = false; // bool? perchè così si accetta che questo valore può essere anche null
  final List<bool>_checkBoxes = [
    true,
    false,
    true,
    false,
    false,
    true,
    true,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: [
            for(final (i, element) in _checkBoxes.indexed)
              Checkbox(value: element, onChanged:(value) {
                setState(() {
                  _checkBoxes[i] = value!;
                });
              },)
            /* Center(
              child: ListTile(
                leading: Checkbox(
                  value: _isCheked,
                  onChanged: (value) {
                    setState(() {
                      _isCheked = value!; // ! => è IL NULL CHECK, cioè noi diciamo che non può mai essere NULL
                    });
                    print("${value}");
                  },
                ), // Prefix
                title: Text("1"), // Title
                subtitle: Text("contenuto bla bla"), // Subtitle
                trailing: Text("14/10/2025"), // Subfix*/
                ],
              ),
            ),
            /*Center(child: ListTile(title: Text("2"))),
            Center(child: ListTile(title: Text("3"))),
            Center(child: ListTile(title: Text("4"))),
            Center(child: ListTile(title: Text("5"))),
          ],
        ),
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Add a ToDo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
