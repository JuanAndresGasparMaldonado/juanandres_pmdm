import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Juan Andrés Gaspar"),
            accountEmail: const Text("juanandresgasparmaldonado@gmail.com"),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage("assets/image1cara.png"),
            ),
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
            ),
          ),

          // --- Inicio y Entregas 1-4 ---
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Nombre y Repositorio (E1)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/nombre');
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Foto Representativa (E2)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/foto');
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library_sharp),
            title: const Text('3 Miniaturas (E3)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/miniaturas');
            },
          ),
          ListTile(
            leading: const Icon(Icons.rowing),
            title: const Text('5 Iconos (Filas) (E4)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/iconos');
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_column),
            title: const Text('5 Imágenes (Columnas) (E5)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/imagenes');
            },
          ),
          ListTile(
            leading: const Icon(Icons.text_fields),
            title: const Text('Textos Desbordados (E6)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/textos');
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_quilt),
            title: const Text('Disposición Imágenes (E7)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/disposicion');
            },
          ),
          ListTile(
            leading: const Icon(Icons.layers),
            title: const Text('Diseño Responsive (E8)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/responsive');
            },
          ),
          ListTile(
            leading: const Icon(Icons.extension),
            title: const Text('Reto Container (E9)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/reto_container');
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_circle),
            title: const Text('Contador +/-/0 (E10)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/contador');
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_comfortable),
            title: const Text('Clon UI (E11)'), // Punto 1
            onTap: () {
              Navigator.pushReplacementNamed(context, '/clon_ui');
            },
          ),
          ListTile(
            leading: const Icon(Icons.palette_outlined),
            title: const Text('Juego Colores (E12)'), // Punto 4
            onTap: () {
              Navigator.pushReplacementNamed(context, '/juego_colores');
            },
          ),
           ListTile(
            leading: const Icon(Icons.touch_app),
            title: const Text('Pulsar Imagen (E13)'), // Punto 5
            onTap: () {
              Navigator.pushReplacementNamed(context, '/juego_pulsar');
            },
          ),
        ],
      ),
    );
  }
}