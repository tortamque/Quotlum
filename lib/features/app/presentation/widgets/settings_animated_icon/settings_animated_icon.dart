import 'package:flutter/material.dart';
import 'package:quotlum/config/theme/colors.dart';

class SettingsAnimatedIcon extends StatefulWidget {
  const SettingsAnimatedIcon({super.key});

  @override
  State<SettingsAnimatedIcon> createState() => _SettingsAnimatedIconState();
}

class _SettingsAnimatedIconState extends State<SettingsAnimatedIcon> with TickerProviderStateMixin {
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
      curve: Curves.easeOut, 
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
                  return SizedBox(
                    height: 400,
                    child: Center(
                      child: Text("Some text")
                    ),
                  );
                }
              );
            },
            icon: const Icon(Icons.color_lens_outlined, color: CustomColors.secondaryColor,),
            iconSize: 27.5,
          ),
        ),
      ),
    );
  }
}