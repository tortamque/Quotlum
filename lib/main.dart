import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotlum/core/utils/dependency_injection.dart';
import 'package:quotlum/features/app/presentation/pages/quotes_page.dart';

void main() {
  runApp(const QuotlumApp());
  DependencyInjection.init();
}

class QuotlumApp extends StatelessWidget {
  const QuotlumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quotlum',
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const QuotesPage(title: 'Quotlum'),
    );
  }
}
