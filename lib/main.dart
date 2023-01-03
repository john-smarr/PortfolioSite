import 'package:flutter/material.dart';
import 'package:js_portfolio_flutter/pages/home_page.dart';
import 'package:js_portfolio_flutter/pages/resume_page.dart';
import 'package:js_portfolio_flutter/pages/coding_experience_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/resume': (context) => const ResumePage(),
        '/coding_experience': (context) => const CodingExperiencePage()
      },
      title: 'John Smarr Portfolio Page',
      theme: ThemeData(
        fontFamily: 'RobotoCondensed',
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}
