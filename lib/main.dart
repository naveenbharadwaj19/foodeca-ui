import 'package:flutter/material.dart';
import 'package:foodeca_ui/get_started_screen.dart';
import 'package:foodeca_ui/home_screen.dart';
import 'package:foodeca_ui/my_order_screen.dart';
import 'package:foodeca_ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOODECA',
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        MyOrderScreen.routeName: (context) => MyOrderScreen(),
      },
      home: GetStartedScreen(),
    );
  }
}
