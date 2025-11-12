import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio - Actividades'),
      ),
      // Añade el drawer unificado
      drawer: const MenuDrawer(),
      body: const Center(
        child: Text('Selecciona una actividad del menú lateral'),
      ),
    );
  }
}