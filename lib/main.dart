import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quotlum/core/utils/dependency_injection.dart';
import 'package:quotlum/features/app/presentation/bloc/change_theme_color_bloc.dart';
import 'package:quotlum/features/app/presentation/bloc/save_theme_color_bloc.dart';
import 'package:quotlum/features/app/presentation/pages/quotes_page.dart';

void main() {
  runApp(const QuotlumApp());
  DependencyInjection.init();
}

class QuotlumApp extends StatelessWidget {
  const QuotlumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChangeThemeColorBloc>(create: (context) => ChangeThemeColorBloc()),
        BlocProvider<SaveThemeColorBloc>(create: (context) => SaveThemeColorBloc())
      ], 
      child: GetMaterialApp(
        title: 'Quotlum',
        theme: ThemeData(
          brightness: Brightness.light,
          useMaterial3: true,
        ),
        home: const QuotesPage(title: 'Quotlum'),
      )
    );
  }
}
