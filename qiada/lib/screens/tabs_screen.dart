import 'package:flutter/material.dart';
import 'package:qiada/screens/up_tab.dart';
import './start_quiz_screen.dart';
import './home_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index) {
    // Navigator.of(context).pushNamed('home');
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    StartQuizScreen(),
    UpTab(),
  ];

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
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _selectScreen,
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Color(0xFF9E9E9E),
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
          BottomNavigationBarItem(icon: Icon(Icons.quiz), label: "اختبر نفسك"),
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center_rounded), label: "تعلم"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "المدربين"),
        ],
      ),
    );
  }
}
