import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaImagenes extends StatelessWidget {
  const PantallaImagenes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Imágenes en columnas")),
      drawer: const MenuDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/image1.jpg', width: 100, height: 100),
            Image.asset('assets/image2.jpg', width: 100, height: 100),
            Image.asset('assets/image3.jpg', width: 100, height: 100),
            Image.asset('assets/image4.jpg', width: 100, height: 100),
            Image.asset('assets/image5.jpg', width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}
