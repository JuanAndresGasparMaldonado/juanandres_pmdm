import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaMiniaturas extends StatelessWidget {
  const PantallaMiniaturas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Miniaturas")),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/image1.jpg', width: 80, height: 80),
            Image.asset('assets/image2.jpg', width: 80, height: 80),
            Image.asset('assets/image3.jpg', width: 80, height: 80),
          ],
        ),
      ),
    );
  }
}
