import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  IconButtonWidget({
    super.key,
    required this.onPressed,
    this.url,
  });

  var onPressed = () {};
  String? url;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        hoverColor: Colors.red,
        iconSize: 40,
        onPressed: onPressed,
        icon: Image.network(
          url as String,
          color: Colors.black,
        ));
  }
}
