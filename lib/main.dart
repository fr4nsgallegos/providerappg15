import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg15/pages/counter_page.dart';
import 'package:providerappg15/pages/home_page.dart';
import 'package:providerappg15/providers/counter_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MaterialApp(
        home: CounterPage(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
