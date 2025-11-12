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
        primarySwatch: Colors.blue,
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