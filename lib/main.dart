import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg15/pages/counter_page.dart';
import 'package:providerappg15/pages/home_page.dart';
import 'package:providerappg15/pages/products_page.dart';
import 'package:providerappg15/providers/cart_provider.dart';
import 'package:providerappg15/providers/counter_provider.dart';

// EJEMPLO CON UN SOLO PROVIDER
// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (_) => CounterProvider(),
//       child: MaterialApp(
//         home: CounterPage(),
//         debugShowCheckedModeBanner: false,
//       ),
//     ),
//   );
// }

// EJEMPLO CON VARIOS PROVIDERS
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],

      child: MaterialApp(
        home: ProductsPage(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
