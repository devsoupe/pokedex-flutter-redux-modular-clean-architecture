import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.buttonLabel,
    required this.responseText,
    required this.color,
    required this.textStyle,
  });

  final String buttonLabel;
  final String responseText;
  final Color color;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        showDialog<String>(
          context: context,
          builder:
              (BuildContext context) => Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    responseText,
                    textAlign: TextAlign.center,
                    style: textStyle.copyWith(color: color),
                  ),
                ),
              ),
        );
      },
      icon: Icon(Icons.favorite, color: color),
      label: Text(buttonLabel, style: textStyle.copyWith(color: color)),
    );
  }
}
