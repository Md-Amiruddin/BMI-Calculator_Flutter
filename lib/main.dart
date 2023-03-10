import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
            bodyText2: TextStyle(
          color: Colors.white,
        )),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: Color(0xFF0A0E21), secondary: Colors.purple),
      ),
      home: InputPage(),
    );
  }
}
