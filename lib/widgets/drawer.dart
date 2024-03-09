import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.all(0),
              accountName: Text('Mujahid Sadiq'),
              accountEmail: Text('subhanmustafai1234@gmail.com'),
            ),
          )
        ],
      ),
    );
  }
}
