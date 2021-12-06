import 'package:flutter/material.dart';
import 'package:flutter_belajar/10_button.dart';
import 'package:flutter_belajar/13_appbar.dart';
import 'package:flutter_belajar/7_row_column.dart';
import 'package:flutter_belajar/8_stack.dart';
import 'package:flutter_belajar/9_grid.dart';

import '6_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BelajarAppbar(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: BelajarButton(),
    );
  }
}
