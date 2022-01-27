import 'package:flutter/material.dart';
import 'package:flutter_belajar/14_alert.dart';
import 'package:flutter_belajar/26_provider.dart';
import 'package:flutter_belajar/27_key.dart';
import 'package:flutter_belajar/29_builder.dart';
import 'package:flutter_belajar/rest_api/get_data.dart';
import 'package:flutter_belajar/rest_api/post_data.dart';

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
      home: BelajarHttpPost(),
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
      body: BelajarBuilder(),
    );
  }
}
