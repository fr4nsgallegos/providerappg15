import 'package:flutter/material.dart';
import 'package:providerappg15/models/product.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _items = [];
  List<Product> get items => List.unmodifiable(_items);

  double getTotalPrice() {
    double total = 0;
    for (final product in _items) {
      total += product.price;
    }

    return total;
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
