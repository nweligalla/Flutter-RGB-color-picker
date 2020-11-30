import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final double currentValue;
  final Color color;
  final Function onChanged;
  ColorSlider({
    @required this.currentValue,
    @required this.color,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${currentValue.toInt()}",
          style: Theme.of(context).textTheme.caption,
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Slider(
            value: currentValue.toDouble(),
            onChanged: onChanged,
            divisions: 255,
            activeColor: color,
            inactiveColor: Colors.grey[800],
            min: 0,
            max: 255,
          ),
        )
      ],
    );
  }
}
