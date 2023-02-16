import 'package:contador/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}
class CounterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // Se ignoro: prefer_const_constructors
   return MaterialApp(
    // Ignore: prefer_const_constructors
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
   );
  }

}