import 'package:flutter/material.dart';

class ColorOption extends StatelessWidget {
  final Color color;

  const ColorOption({
    required this.color,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: const [
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
    );
  }
}