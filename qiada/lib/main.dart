import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './screens/home_screen.dart';
import 'screens/quiz_screen.dart';
import './screens/tabs_screen.dart';
import './screens/start_quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code
      ],
      title: 'Qiada',
      theme: ThemeData(
          primarySwatch: Palette.kToDark,
          fontFamily: 'ElMessiri',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.bold,
                ),
                headline6: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                ),
              )),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        // 'home': (context) => HomeScreen(),
      },
      // home: TabsScreen(),
    );
  }
}
class Palette { 
  static const MaterialColor kToDark = const MaterialColor( 
    0xffaec7f1, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xff9db3d9 ),//10% 
      100: const Color(0xff8b9fc1),//20% 
      200: const Color(0xff7a8ba9),//30% 
      300: const Color(0xff687791),//40% 
      400: const Color(0xff576479),//50% 
      500: const Color(0xff465060),//60% 
      600: const Color(0xff343c48),//70% 
      700: const Color(0xff232830),//80% 
      800: const Color(0xff111418),//90% 
      900: const Color(0xff000000),//100% 
    }, 
  ); 
}