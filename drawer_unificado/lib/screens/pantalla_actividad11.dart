import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaActividad11 extends StatelessWidget {
  const PantallaActividad11({super.key});
  //Esta pantalla simula un perfil de Instagram con varios elementos e imágenes de ejemplo:

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      // La barra superior
      appBar: AppBar(
        backgroundColor:
            Colors.grey[50], // un color de fondo casi blanco como el de instagram
        elevation: 0,
        title: Row(
          children: const [
            // Mi nombre de instagram
            Text(
              'andressjgaspar',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.verified, color: Colors.blue, size: 18), // icono de verificado azul
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Aquí va la foto de perfil con borde degradado
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
                        // Foto obtenida de internet como imagen de perfil de ejemplo
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/seed/miperfil/200/200',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // El número de seguidores
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
                          Text('Posts', style: TextStyle(fontSize: 14)),
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
                          Text('Followers', style: TextStyle(fontSize: 14)),
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
                          Text('Following', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Mis datos de perfil
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Juan Andres Gaspar Maldonado',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  'Estudiante de DAM',
                  style: TextStyle(color: Colors.black87, fontSize: 14),
                ),
                Text('IES Pablo Picasso', style: TextStyle(fontSize: 14)),
                Text(
                  'Instagram: @andressjgaspar',
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
                SizedBox(height: 4),
                Text(
                  'Followed by ibai, auronplay and 99 others',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Los botones de seguir
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                    ),
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
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                    ),
                    child: const Text(
                      'Mensaje',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
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

          // Los circulos de las historias
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue[100],
                        ),
                        child: Icon(
                          Icons.travel_explore,
                          color: Colors.blue[800],
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text('Viajes', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green[100],
                        ),
                        child: Icon(
                          Icons.fastfood_outlined,
                          color: Colors.green[800],
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text('Comida', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange[100],
                        ),
                        child: Icon(
                          Icons.pets,
                          color: Colors.orange[800],
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text('Mascotas', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Las pestañas de las fotos
          Row(
            children: [
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    Icons.grid_on,
                    color: Colors.blue, // color para mostrar que está activo
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.video_collection_outlined),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.person_pin_outlined),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          const Divider(height: 1),

          // Las fotos de abajo
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: 1.5,
            crossAxisSpacing: 1.5,
            children: [
              // Fotos obtenidas de internet para utilizar como publicaciones de ejemplo
              Image.network(
                'https://picsum.photos/seed/img1/200/200',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/img2/200/200',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/img3/200/200',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/img4/200/200',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/img5/200/200',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/img6/200/200',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/img7/200/200',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/img8/200/200',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/img9/200/200',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}