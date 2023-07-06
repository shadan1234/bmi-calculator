import 'package:bmi_calculator/components/BottomButton.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/screen/input_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultsPage({required this.bmiResult,required this.interpretation,required this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text('BMI CALUCLATOR'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result',style:kTitleTextStyle ,),
          ),

          ),
          Expanded(flex: 5,child:ReusableCard(onPress:(){},colour: kActiveCardColor,cardchild:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(resultText.toUpperCase(),style: kResultTextStyle,),
              Text(bmiResult,style: kBMITextStyle,),
              Text(interpretation,style: kBodyTextStyle,),

            ],
          ) ,)),
          BottomButton(onTap:(){Navigator.pop(context); }, buttontitle: 'RECALCULATE'),

        ],
      ),
    );
  }
}
