import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg15/models/product.dart';
import 'package:providerappg15/providers/cart_provider.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({super.key});

  final List<Product> products = [
    Product(id: 1, name: "Laptop", price: 3500),
    Product(id: 2, name: "Mouse", price: 80),
    Product(id: 3, name: "Teclado", price: 150),
    Product(id: 3, name: "Monitor", price: 900),
    Product(id: 5, name: "Audifonos", price: 220),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Productos")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];

          return Card(
            child: ListTile(
              leading: Icon(Icons.inventory_2),
              title: Text(product.name),
              subtitle: Text("S/ ${product.price}"),
              trailing: IconButton(
                onPressed: () {
                  context.read<CartProvider>().addProduct(product);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("${product.name} agregado al carrito"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                icon: Icon(Icons.add_circle),
              ),
            ),
          );
        },
      ),
    );
  }
}
