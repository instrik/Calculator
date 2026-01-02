// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'components/my_button.dart';
import 'package:math_expressions/math_expressions.dart';

// trial comment 4

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    ),
  );
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = '';
  String answer = '';

  void equalPress() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text('Calculator'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput,
                          // userInput.toString(),
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  verticalDirection: VerticalDirection.up,
                  children: [
                    Row(
                      children: [
                        MYButton(
                          title: 'AC',
                          colour: Colors.grey,
                          // colour: Color(0xFFFFA00A),
                          // colour: Color(0xFFA5A5A5),
                          onPress: () {
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '+/-',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '+/-';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '%',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '/',
                          colour: Colors.orange,
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '7',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '8',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '8';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '9',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '9';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: 'x',
                          colour: Colors.orange,
                          onPress: () {
                            userInput += 'x';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '4',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '5',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '6',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '6';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '-',
                          colour: Colors.orange,
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '1',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '2',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '3',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '+',
                          colour: Colors.orange,
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '0',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '.',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: 'Del',
                          colour: Colors.grey,
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          },
                        ),
                        MYButton(
                          title: '=',
                          colour: Colors.orange,
                          onPress: () {
                            setState(() {
                              equalPress();
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


























































































