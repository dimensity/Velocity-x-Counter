import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_counter_03/screens/home_screen.dart';
import 'package:velocityx_counter_03/my_store.dart';

void main() {
  runApp(
    VxState(
      store: MyStore(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
