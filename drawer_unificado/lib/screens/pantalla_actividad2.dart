import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaFoto extends StatelessWidget {
  const PantallaFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Foto e Identidad (E2)")),
      drawer: const MenuDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image1cara.png', width: 150, height: 150),
            const SizedBox(height: 10),
            const Text("Juan Andrés Gaspar Maldonado",
                style: TextStyle(fontSize: 18))
          ],
        ),
      ),
    );
  }
}
