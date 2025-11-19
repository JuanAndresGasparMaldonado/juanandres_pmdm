import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaActividad10 extends StatefulWidget {
  const PantallaActividad10({super.key});

  @override
  State<PantallaActividad10> createState() => _PantallaActividad10State();
}

class _PantallaActividad10State extends State<PantallaActividad10> {
  int _veces = 0;

  void _incrementar() {
    setState(() {
      _veces++;
    });
  }

  void _decrementar() {
    setState(() {
      _veces--;
    });
  }

  void _puestaacero() {
    setState(() {
      _veces = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Contador de Clics (E10)',
          ),
       
      ),
      drawer: const MenuDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Has pulsado el botón:',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Text(
              _veces == 1 ? "$_veces vez" : "$_veces veces",
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end, // Alinea la columna abajo
        crossAxisAlignment:
            CrossAxisAlignment.end, // Alinea los botones a la derecha
        children: [
          FloatingActionButton(
            heroTag: 'btnincrementar',
            onPressed: _incrementar,
            tooltip: 'Increment',
            backgroundColor: Colors.green[300],
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'btndecrementar',
            onPressed: _decrementar,
            tooltip: 'Decrement',
            backgroundColor: Colors.red[300],
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'btnreset',
            onPressed: _puestaacero,
            tooltip: 'Reset',
            backgroundColor: Colors.grey[400],
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
    //   ),
    // );
  }
}
