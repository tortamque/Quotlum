import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/config/theme/colors.dart';
import 'package:quotlum/features/app/domain/entities/classes/color_options.dart';
import 'package:quotlum/features/app/presentation/bloc/change_theme_color_bloc.dart';

class ColorAnimatedIcon extends StatefulWidget {
  const ColorAnimatedIcon({super.key});

  @override
  State<ColorAnimatedIcon> createState() => _ColorAnimatedIconState();
}

class _ColorAnimatedIconState extends State<ColorAnimatedIcon> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic, 
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildBottomSheetContent(){
    return SizedBox(
      height: MediaQuery.of(context).size.height/2,
      child: GridView.count(
        crossAxisCount: 3,
        children: ColorOptions.colors
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: RotationTransition(
        turns: _animation,
        child: SizedBox(
          child: IconButton(
            onPressed: () {
              _controller.reset();
              _controller.forward();

              showModalBottomSheet(
                context: context, 
                builder: (BuildContext context){
                  return _buildBottomSheetContent();
                }
              );
            },
            icon: BlocBuilder<ChangeThemeColorBloc, Color>(
              builder: (context, state) {
                return Icon(Icons.color_lens_outlined, color: CustomColors.secondaryColor);
              },
            ),
            iconSize: 27.5,
          ),
        ),
      ),
    );
  }
}