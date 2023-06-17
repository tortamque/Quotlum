import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/features/app/presentation/bloc/change_theme_color_bloc.dart';


class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeThemeColorBloc, Color>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          color: state,
        );
      },
    );
  }
}
