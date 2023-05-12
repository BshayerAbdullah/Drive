import 'package:flutter/material.dart';
import 'package:qiada/component/action_button.dart';
import 'package:qiada/screens/tabs_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.totalQuestions,
    required this.score,
  }) : super(key: key);

  final int score;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          children: [
            SizedBox(
              height: 180,
            ),
            Image(
              fit: BoxFit.contain,
              height: 200,
              width: 200,
              image: AssetImage('images/medal.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'النتيجة : $score / $totalQuestions',
              style: TextStyle(
                  color: Colors.black, fontSize: 40, fontFamily: 'Almarai'),
            ),
            SizedBox(height: 40),
            ActionButton(
                title: "الصفحة الرئيسية",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TabsScreen(),
                    ),
                  );
                }),
            SizedBox(height: 40),
            ActionButton(
                title: "الاجابات",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TabsScreen(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
