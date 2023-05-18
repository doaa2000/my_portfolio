import 'package:flutter/material.dart';

class MouseRegionWidget extends StatelessWidget {
  MouseRegionWidget({
    super.key,
    required this.backgroundColor,
    this.textColor,
    required this.text,
    required this.onPressed,
  });

  Color backgroundColor;
  Color? textColor;
  Text text;
  var onPressed = () {};
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) return backgroundColor;
            return Colors.white;
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) return textColor!;
              return Colors.black;
            },
          ),
        ),
        child: text,
      ),
    );
  }
}
