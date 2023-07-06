import 'package:flutter/material.dart';
import 'screen/input_page.dart';
void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0XFF12153B),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Color(0XFF0B1033),


      ),
      home: InputPage(),
    );
  }
}


