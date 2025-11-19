import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart'; // Asegúrate de que la ruta sea correcta

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(
        title: const Text("Menú Principal - PMDM"),
        backgroundColor: Colors.green, // Verde Tenis
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          // 1. Añadimos una imagen de fondo de un partido de tenis
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1622279457486-62dcc4a431d6?q=80&w=1080&auto=format&fit=crop',
                ), // Imagen de pista de tenis
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 2. Le pongo una capa oscura para mejorar contraste
          Container(color: Colors.black.withValues(alpha: 0.6)),
          // 3. Contenido principal centrado para ser responsivo
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.sports_tennis,
                      size: 80,
                      color: Colors.lightGreenAccent,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Bienvenido a mi App con estética de Tenis",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Selecciona una práctica del menú lateral",
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                    const SizedBox(height: 40),

                    // Botón para abrir el menú del Drawer
                    Builder(
                      builder: (BuildContext newContext) {
                        return ElevatedButton.icon(
                          onPressed: () {
                            Scaffold.of(newContext).openDrawer();
                          },
                          icon: const Icon(Icons.menu),
                          label: const Text("Abrir Menú de Prácticas"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreenAccent,
                            foregroundColor: Colors.black87,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
