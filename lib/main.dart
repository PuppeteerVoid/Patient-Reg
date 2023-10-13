import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:hospitalghq/pages/roledecisionpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  RoleDecision(),
    );
  }
}

