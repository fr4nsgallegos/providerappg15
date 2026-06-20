import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int counter;
  HomePage({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage")),
      body: Center(
        child: Text("Contador: $counter", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
