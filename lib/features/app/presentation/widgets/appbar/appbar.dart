import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';
import 'package:quotlum/features/app/presentation/bloc/change_theme_color_bloc.dart';
import 'package:quotlum/features/app/presentation/widgets/color_change/color_animated_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: BlocBuilder<ChangeThemeColorBloc, Color>(
        builder: (context, state) {
          return AnimatedContainer(
            curve: Curves.easeOutCubic,
            duration: const Duration(milliseconds: 500),
            color: state,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0, 
              title: Text(
                title,
                style: TextStyle(color: CustomColors.secondaryColor),
              ),
              actions: const [
                ColorAnimatedIcon(),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
