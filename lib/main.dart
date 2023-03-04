import 'package:flutter/material.dart';
import 'package:restaurant_app/src/presentation/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mayor Dining',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Typography.englishLike2018
            .apply(fontSizeFactor: 1),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
