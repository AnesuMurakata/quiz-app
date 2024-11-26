import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions_screen.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = HomeScreen(switchScreen);
  // }

  var activeScreen = 'home_screen';

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomeScreen(switchScreen);

    if (activeScreen == 'questions_screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [Colors.deepPurple, Colors.indigo],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
