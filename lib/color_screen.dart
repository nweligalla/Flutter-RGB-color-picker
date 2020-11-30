import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './widgets/color_slider.dart';

class ColorScreen extends StatefulWidget {
  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  double redValue = 255;
  double greenValue = 255;
  double blueValue = 255;

  void copyToClipBoard(String data) {
    Clipboard.setData(
      ClipboardData(text: data),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color.fromRGBO(
        redValue.toInt(), greenValue.toInt(), blueValue.toInt(), 1);
    String hexValue =
        "#${redValue.toInt().toRadixString(16)}${greenValue.toInt().toRadixString(16)}${blueValue.toInt().toRadixString(16)}";
    String rgbValue =
        "rgb(${redValue.toInt()},${greenValue.toInt()},${blueValue.toInt()})";

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "RGB Color Picker",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 6),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      hexValue,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.copy,
                      ),
                      onPressed: () => copyToClipBoard(hexValue),
                    )
                  ],
                ),
                TextButton(
                  onPressed: () => copyToClipBoard(rgbValue),
                  child: Text(
                    rgbValue,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColorSlider(
                      currentValue: redValue,
                      color: Colors.red,
                      onChanged: (double value) => setState(() {
                        redValue = value;
                      }),
                    ),
                    ColorSlider(
                      currentValue: greenValue,
                      color: Colors.green,
                      onChanged: (double value) => setState(() {
                        greenValue = value;
                      }),
                    ),
                    ColorSlider(
                      currentValue: blueValue,
                      color: Colors.blue,
                      onChanged: (double value) => setState(() {
                        blueValue = value;
                      }),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "Made by ❤️ with Flutter",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
