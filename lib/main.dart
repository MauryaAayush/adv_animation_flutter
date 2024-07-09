import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Daily_task/Day1/HomeScreen/home_screen.dart';
import 'Daily_task/Day1/controller/game_provider.dart';
import 'Daily_task/Day2(Hero)/Homescreen/HeroHomeScreen.dart';
import 'Daily_task/Day2(Hero)/ProductScreen/product_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => MatchGameProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HeroHomeScreen(),
      initialRoute: '/',
      routes: {
        '/' : (context) => const HeroHomeScreen(),
        '/second' : (context) =>  const ProductScreen(),
      },
    );
  }
}
