import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaTextos extends StatelessWidget {
  const PantallaTextos({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Textos Desbordados (E6)'),
      ),
      drawer: const MenuDrawer(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Este es un texto muy largo que no cabe en el contenedor y demuestra que pasa cuando en Flutter el texto es más grande de lo esperado.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Texto con la fuente de Google Lobster. Este texto también es demasiado grande y se corta.',
                style: GoogleFonts.lobster(
                  fontSize: 56,
                  color: Colors.black,
                ),
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                'Este texto se ajusta automáticamente para caber en su contenedor sin desbordarse gracias al paquete auto_size_text.',
                style: const TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 40,
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}