// widgets.dart

import 'package:flutter/material.dart';

class ProductivityButton extends StatelessWidget {
  /* final  */ Color? color;
  /* final  */ String? text;
  /* final  */ double? size;
  /* final  */ VoidCallback? onPressed;

  ProductivityButton(
      {@required this.color,
      @required this.text,
      @required this.size,
      @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      minWidth: size,
      onPressed: onPressed,
      child: Text(
        text!,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
