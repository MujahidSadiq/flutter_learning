import 'package:flutter/material.dart';
import 'package:flutter_learning/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return const ListTile();
  }
}
