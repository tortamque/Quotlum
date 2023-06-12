import 'package:flutter/material.dart';

void main() {
  runApp(const QuotlumApp());
}

class QuotlumApp extends StatelessWidget {
  const QuotlumApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotlum',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quotlum'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
