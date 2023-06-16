import 'package:flutter/material.dart';
import 'package:quotlum/config/theme/colors.dart';

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
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: GestureDetector(
              onTap: (){},
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      spreadRadius: 0,
                    )
                  ]
                ),
              ),
            )
          ),
        ],
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
            icon: const Icon(Icons.color_lens_outlined, color: CustomColors.secondaryColor,),
            iconSize: 27.5,
          ),
        ),
      ),
    );
  }
}