import 'package:flutter/material.dart';

class CatalogModel {
  static List<String> itemNames = [
    'Milk',
    'Wheat',
    'Rice',
    'Detergents',
    'Drinks',
  ];

  /// Get item by [id].
  ///
  /// In this sample, the catalog is infinite, looping over [itemNames].
  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);

  /// Get item by its position in the catalog.
  Item getByPosition(int position) {
    // In this simplified case, an item's position in the catalog
    // is also its id.
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final int price = 42;

  Item(this.id, this.name);

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
