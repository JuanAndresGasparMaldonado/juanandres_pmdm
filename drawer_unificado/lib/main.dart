import 'package:flutter/material.dart';
import 'package:drawer_unificado/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividades Unificadas',
      theme: ThemeData(
        // Usamos un color base (azul)
        primarySwatch: Colors.blue,
        
        // Personalización de Scaffolds (fondo de pantalla de las apps)
        scaffoldBackgroundColor: Colors.grey[100], // Un gris muy claro

        // Personalización de los AppBars
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // Fondo azul
          foregroundColor: Colors.white, // Iconos y texto de la barra en blanco
          elevation: 2, // Una sombra ligera
          // Estilo para el título del AppBar
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        // Personalización de Textos
        textTheme: const TextTheme(
          // Estilo por defecto para la mayoría de textos (ej. en el body)
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.black87, // Un negro no tan intenso
          ),
          // Estilo para títulos o textos destacados
          headlineSmall: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      
      // Punto 2: Rutas nombradas (esto ya lo tenías bien)
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        
        // Rutas Entregas 1-4
        '/nombre': (context) => const PantallaNombre(),
        '/foto': (context) => const PantallaFoto(),
        '/miniaturas': (context) => const PantallaMiniaturas(),
        '/iconos': (context) => const PantallaIconos(),
        '/imagenes': (context) => const PantallaImagenes(),
        '/textos': (context) => const PantallaTextos(),
        '/disposicion': (context) => const PantallaDisposicion(),
        '/responsive': (context) => const PantallaActividad8(),
        '/reto_container': (context) => const PantallaActividad9(),
        '/contador': (context) => const PantallaActividad10(),
        
        // Punto 1 (Ruta para el Clon UI)
        '/clon_ui': (context) => const PantallaActividad11(),

        // (NUEVO) Rutas para la nueva entrega
        // Punto 4 (Entrada 12)
        '/juego_colores': (context) => const RandomColors(), 
        // Punto 5 (Entrada 13)
        '/juego_pulsar': (context) => const PantallaJuegoPulsar(), 
      },
    );
  }
}