import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg15/providers/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = context.watch<CartProvider>();
    return Scaffold(
      appBar: AppBar(title: Text("Mi Carrito")),
      body: cartProvider.items.isEmpty
          ? Center(
              child: Text(
                "Tu carrito esta vacio",
                style: TextStyle(fontSize: 22),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(16),
                    itemCount: cartProvider.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      final product = cartProvider.items[index];
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.inventory_2),
                          title: Text(product.name),
                          subtitle: Text("S/ ${product.price}"),
                          trailing: IconButton(
                            onPressed: () {
                              context.read<CartProvider>().removeProduct(
                                product,
                              );
                            },
                            icon: Icon(Icons.remove_circle),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text(
                    "Total: S/ ${cartProvider.getTotalPrice().toStringAsFixed(2)}",
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
    );
  }
}
