import 'package:curency_converter/currency_converter_rename_material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//Types of widgets
//1.statlelessWidget
//2.StatefulWidget

//1.Material Design--> for android design
//2. Cupertino Design--> for apple design

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterRenameMaterial());
  }
}
