import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotlum/features/app/domain/entities/classes/color_options.dart';
import 'package:quotlum/features/app/presentation/bloc/change_theme_color_bloc.dart';

class ColorAnimatedIcon extends StatefulWidget {
  const ColorAnimatedIcon({super.key});

  @override
  State<ColorAnimatedIcon> createState() => _ColorAnimatedIconState();
}

class _ColorAnimatedIconState extends State<ColorAnimatedIcon> with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    _rotationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _rotationAnimation = CurvedAnimation(
      parent: _rotationController,
      curve: Curves.easeOutCubic, 
    );

    super.initState();
  }

  @override
  void dispose() {
    _rotationController.dispose();
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
        turns: _rotationAnimation,
        child: SizedBox(
          child: IconButton(
            onPressed: () {
              _rotationController.reset();
              _rotationController.forward();

              showModalBottomSheet(
                context: context, 
                builder: (BuildContext context){
                  return _buildBottomSheetContent();
                }
              );
            },
            icon: BlocBuilder<ChangeThemeColorBloc, ColorState>(
              builder: (context, state) {
                return TweenAnimationBuilder<Color?>(
                  tween: ColorTween(
                    begin: state.previous,
                    end: state.current,
                  ),
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOutCubic,
                  builder: (context, value, child) {
                    return Icon(Icons.color_lens_outlined, color: value);
                  },
                );
              },
            ),
            iconSize: 27.5,
          ),
        ),
      ),
    );
  }
}