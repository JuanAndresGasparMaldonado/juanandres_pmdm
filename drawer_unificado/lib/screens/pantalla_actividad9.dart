import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaActividad9 extends StatelessWidget {
  const PantallaActividad9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reto Container (E9)'),
      ),
      drawer: const MenuDrawer(),
      body: Align(
        // Tu código original (Align + Container) va aquí
        alignment: Alignment.topCenter,
        child: Container(
          // Margen superior
          margin: const EdgeInsets.only(top: 40),

          // Un tamaño del círculo
          width: 250,
          height: 250,

          // Centramos el texto 'H' dentro del Container
          alignment: Alignment.center,

          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              // Un color diferente (amarillo)
              color: Colors.blueAccent.shade700,
              // Un borde grueso
              width: 20,
            ),
          ),
          child: const Text(
            'H',
            style: TextStyle(
              // Tamaño de fuente ajustado al nuevo tamaño del círculo
              fontSize: 150,
              // A juego con el borde
              color: Colors.black,
              // Un estilo diferente (negrita)
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}