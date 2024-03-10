import 'package:flutter/material.dart';
import 'package:flutter_learning/models/catalog.dart';
import 'package:flutter_learning/widgets/drawer.dart';
import 'package:flutter_learning/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String name = 'muju';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          'MY App',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return  ItemWidget(item:CatalogModel.items[index] ,);
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
