import 'package:flutter/material.dart';
import 'package:quotlum/features/app/presentation/pages/quotes_page.dart';

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
        colorSchemeSeed: Colors.greenAccent,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const QuotesPage(title: 'Quotlum'),
    );
  }
}
