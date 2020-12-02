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
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: color,
              inactiveTrackColor: Colors.grey[350],
              thumbColor: color,
            ),
            child: Slider(
              value: currentValue.toDouble(),
              onChanged: onChanged,
              divisions: 255,
              min: 0,
              max: 255,
            ),
          ),
        )
      ],
    );
  }
}
