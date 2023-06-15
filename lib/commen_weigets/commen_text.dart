import 'package:flutter/material.dart';

class Commen_text extends StatelessWidget {
  const Commen_text({Key? key, this.text, this.color, this.weight, this.size})
      : super(key: key);

  final text;
  final color;
  final weight;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
