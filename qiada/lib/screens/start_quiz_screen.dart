import 'package:flutter/material.dart';
import 'package:qiada/models/question.dart';
// import '../models/question.dart';
import '../component/action_button.dart';
import 'quiz_screen.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   titleTextStyle: Theme.of(context).textTheme.headline6,
      //   title: Text(
      //     "قيادة",
      //     textAlign: TextAlign.center,
      //   ),
      // ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('اختبر نفسك!',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            SizedBox(height: 40),
            ActionButton(onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      QuizScreen(totalTime: 10, questions: question),
                ),
              );
            },
            title: 'ابدأ',
            )
          ],
        ),
      ),
    );
  }
}


