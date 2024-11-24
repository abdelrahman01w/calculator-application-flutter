import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget
{
  Function onButtonClick;
  String text;
  CalculatorButton({required this.text, required this.onButtonClick});
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.all(3),
      child: ElevatedButton (onPressed: (){
        onButtonClick(text);
      }, child: Text('$text'
          ,style: TextStyle(fontSize: 25,color: Colors.black),
      ),
      ),
    ));
  }

}