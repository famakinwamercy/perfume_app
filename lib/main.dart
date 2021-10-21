import 'package:flutter/material.dart';
import 'package:perfume_online_app/components/best_deal.dart';
import 'package:perfume_online_app/home_screen.dart';
import 'package:perfume_online_app/model/perf_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home:HomeScreen());
  }
}
