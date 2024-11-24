import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculater_practis/calculator_button.dart';

class Calcularor extends StatefulWidget
{
  static const String routeName='calculator';

  @override
  State<Calcularor> createState() => _CalcularorState();
}

class _CalcularorState extends State<Calcularor> {
  String resText='';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
     title: Text('calculator'),
     centerTitle: true,
   ),
     body: Column(
         crossAxisAlignment :CrossAxisAlignment.start,
         children: [
         Expanded(child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(resText,style: TextStyle(fontSize: 26),),
           ],
         )),
         Expanded(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               CalculatorButton(text: '7', onButtonClick: onDigitText)
              , CalculatorButton(text: '8',onButtonClick: onDigitText)
              , CalculatorButton(text: '9',onButtonClick: onDigitText)
              , CalculatorButton(text: '*',onButtonClick: onOperatorClick)

             ],
              )
         )
        , Expanded(
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [  CalculatorButton(text: '4',onButtonClick: onDigitText)
                 , CalculatorButton(text: '5',onButtonClick: onDigitText)
                 , CalculatorButton(text: '6',onButtonClick: onDigitText)
                 , CalculatorButton(text: '/',onButtonClick: onOperatorClick)
               ],
             )
         )
        , Expanded(
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [ CalculatorButton(text: '1',onButtonClick: onDigitText)
                 , CalculatorButton(text: '2',onButtonClick: onDigitText)
                 , CalculatorButton(text: '3',onButtonClick: onDigitText)
                 , CalculatorButton(text: '+',onButtonClick: onOperatorClick)
               ],
             )
         )
        , Expanded(
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [CalculatorButton(text: '.',onButtonClick: onDigitText)
               , CalculatorButton(text: '0',onButtonClick: onDigitText)
               , CalculatorButton(text: '=',onButtonClick: onEqualClick)
               , CalculatorButton(text: '-',onButtonClick: onOperatorClick)

               ],
             )
         )
    ],
    )
   );
  }
  String lhs='';
  String operator='';

void onDigitText(String text) {
resText+=text;
setState(() {
});
}
void onOperatorClick(String clickOperator){
if(operator.isEmpty){
lhs=resText;
}
else
  {
    String rhs=resText;
    lhs=calculaterwsult(rhs,lhs,operator);
  }
operator=clickOperator;
resText='';
setState(() {
});
  }
  void onEqualClick(String onEqualKlick){
    String rhs=resText;
    resText=calculaterwsult(rhs, lhs, operator);
    lhs='';
    operator='';
    setState(() {
    });
  }
  String calculaterwsult(String rhs, String lhs, String operator) {
    double num1 =double.parse(lhs);
    double num2 =double.parse(rhs);
    double res=0;
    if(operator=='+')
    {
      res=num1+num2;
    } else if(operator=='-')
    {
      res=num1-num2;
    }else if(operator=='*')
    {
      res=num1*num2;
    }else if(operator=='/')
    {
      res=num1/num2;
    }
    return res.toString();
  }

}

