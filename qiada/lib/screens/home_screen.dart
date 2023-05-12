import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(
            fit: BoxFit.fill,
            image: AssetImage('images/image1.png'),
          ),
        ],
      ),
    );
  }
}
