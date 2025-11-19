import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaIconos extends StatelessWidget {
  const PantallaIconos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iconos en filas (E4)")),
      drawer: const MenuDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(Icons.home, size: 40),
            Icon(Icons.star, size: 40),
            Icon(Icons.favorite, size: 40),
            Icon(Icons.person, size: 40),
            Icon(Icons.settings, size: 40),
          ]),
        ],
      ),
    );
  }
}
