import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';
import 'package:url_launcher/url_launcher.dart'; // Import necesario

class PantallaActividad11 extends StatelessWidget {
  const PantallaActividad11({super.key});

  // Función para abrir enlaces externos
  Future<void> _lanzarURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('No se pudo abrir $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          children: const [
            Text(
              'andressjgaspar',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.verified, color: Colors.blue, size: 18),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      // ListView hace que sea responsive (scrollable)
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Foto de perfil
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [Colors.yellow, Colors.red, Colors.purple],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/seed/miperfil/200/200',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Estadísticas
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '12',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Posts'),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '1850',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Followers'),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '720',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Following'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // --- DATOS DEL PERFIL Y ENLACES ---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Juan Andres Gaspar Maldonado',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const Text(
                  'Estudiante de DAM - IES Pablo Picasso',
                  style: TextStyle(color: Colors.black87, fontSize: 14),
                ),
                const SizedBox(height: 5),

                // ENLACE 1: GITHUB
                GestureDetector(
                  onTap: () => _lanzarURL(
                    'https://github.com/juanandresgasparmaldonado/juanandres_pmdm',
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.link, size: 16, color: Colors.blue),
                      SizedBox(width: 4),
                      Text(
                        'GitHub: juanandres_pmdm',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 4),

                // ENLACE 2: INSTAGRAM
                GestureDetector(
                  onTap: () =>
                      _lanzarURL('https://www.instagram.com/andressjgaspar/'),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 16,
                        color: Colors.purple,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Instagram: @andressjgaspar',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 4),
                const Text(
                  'Followed by ibai, auronplay and 99 others',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Botones de acción
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Seguir',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Mensaje',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.person_add_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Historias (Stories)
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _crearHistoria('Viajes', Icons.travel_explore, Colors.blue),
                _crearHistoria('Comida', Icons.fastfood_outlined, Colors.green),
                _crearHistoria('Mascotas', Icons.pets, Colors.orange),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Divider(height: 1),

          // Grid de fotos
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: 1.5,
            crossAxisSpacing: 1.5,
            children: List.generate(9, (index) {
              return Image.network(
                'https://picsum.photos/seed/img${index + 1}/200/200', // CORREGIDO: https (sin S extra)
                fit: BoxFit.cover,
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _crearHistoria(String titulo, IconData icono, MaterialColor color) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color[100],
            ),
            child: Icon(icono, color: color[800], size: 30),
          ),
          const SizedBox(height: 4),
          Text(titulo, style: const TextStyle(fontSize: 11)),
        ],
      ),
    );
  }
}
