import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rust/WASM/Flutter interop demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    var rustString = context["wasm_demo"].callMethod('get_string').toString();

    return Scaffold(
      appBar: AppBar(
        title: Text("Rust/WASM/Flutter interop demo"),
      ),
      body: Center(
        child: Text(rustString),
      ),
    );
  }
}
