import 'package:flutter/material.dart';
import 'package:introduction_flutter/src/pages/count_page.dart';
//import 'package:introduction_flutter/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: CountPage()),
    );
  }
}
