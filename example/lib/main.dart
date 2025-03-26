import 'package:custom_loader/custom_loader.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Loader Example")),
        body: Center(child: CustomLoader(size: 70.0, color: Colors.red)),
      ),
    );
  }
}
