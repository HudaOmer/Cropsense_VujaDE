import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final Color color;
  final String text;
  final void Function() onPressed;
  const ColoredButton(
      {super.key,
      required this.color,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(backgroundColor: color),
      child: Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text(text,
              style:
                  const TextStyle(color: Colors.white, fontFamily: "Saken"))),
    );
  }
}
