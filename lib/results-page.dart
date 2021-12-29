import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable-card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String textResult;
  final String descriptionResult;

  ResultsPage(
      {@required this.bmiResult,
      @required this.textResult,
      @required this.descriptionResult});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'your Result',
                style: kTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xFF8D8E98),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    textResult.toUpperCase(),
                    style: TextStyle(
                      color: bottomColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: mTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      descriptionResult,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              child: Center(
                child: Text(
                  'RE_CALCULATOR',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: bottomColor,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 65,
              width: 300,
              margin: EdgeInsets.only(top: 10, bottom: 20),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
