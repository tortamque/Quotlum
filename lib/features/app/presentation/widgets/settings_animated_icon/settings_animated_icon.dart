import 'package:flutter/material.dart';
import 'package:quotlum/config/theme/colors.dart';

class SettingsAnimatedIcon extends StatefulWidget {
  const SettingsAnimatedIcon({super.key});

  @override
  State<SettingsAnimatedIcon> createState() => _SettingsAnimatedIconState();
}

class _SettingsAnimatedIconState extends State<SettingsAnimatedIcon> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 750),
      vsync: this
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
    return GestureDetector(
      onTap: (){
        if (_isPlay == false) {
          _controller.forward();
          _isPlay = true;
        } else{
          _controller.reverse();
          _isPlay = false;
        }
      },
      child: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: _controller,
        color: CustomColors.secondaryColor,
        size: 30,
      ),
    );
  }
}