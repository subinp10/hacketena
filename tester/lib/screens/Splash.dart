import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
class Splash extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];  const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );  return Scaffold(backgroundColor: Colors.cyanAccent,
        body: Center(
            child:Column(mainAxisSize: MainAxisSize.min,
                children:[Center(child:Text('welcome to tripper'))
                  ,SizedBox(
                      width: 250.0,
                      child: AnimatedTextKit(
                        animatedTexts: [

                          ColorizeAnimatedText(
                            'seek  choice',
                            textStyle: colorizeTextStyle,
                            colors: colorizeColors,
                          ),

                        ],
                        isRepeatingAnimation: true,
                        onTap: () {
                          print("Tap Event");
                        },)
                  ),]

            ))
    );
  }
}