import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reused_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'bmi_brain.dart';

class ResultPage extends StatelessWidget {
  // final bmiStatus;
  // final bmiNumber;
  // final bmiExplain;
  // ResultPage({
  //   required this.bmiStatus,
  //   required this.bmiNumber,
  //   required this.bmiExplain,
  // });

  @override
  Widget build(BuildContext context) {
    final calc = ModalRoute.of(context)!.settings.arguments as BmiBrain;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTextTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusedCard(
              colour: kActiveCardColor,
              bodyContainerChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    calc.bmiResultStatus(),
                    style: kTextResultTitle,
                  ),
                  Text(
                    calc.bmiResultNumber(),
                    style: kResultNumber,
                  ),
                  Text(
                    calc.bmiResultExplain(),
                    style: kTextResultExplain,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            buttonText: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
