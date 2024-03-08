import 'package:flutter/material.dart';

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
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('welcome in 30 days in flutter by $name',
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.blue,
      ),
    );
  }
}
