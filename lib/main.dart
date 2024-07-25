import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "DashBoard",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AdaptiveLayout(),
        backgroundColor: Color(0xFFF7F9FA),
      ),
    );
  }
}
