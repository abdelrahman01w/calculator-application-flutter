import 'package:flutter/material.dart';
import 'package:calculater_practis/calculator_screen.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      initialRoute: Calcularor.routeName,
      routes: {
       Calcularor.routeName : (context) => Calcularor(),
      },
    );
  }

}