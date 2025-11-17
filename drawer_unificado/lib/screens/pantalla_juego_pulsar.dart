import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';
import 'dart:async';
import 'dart:math';

class PantallaJuegoPulsar extends StatefulWidget {
  const PantallaJuegoPulsar({super.key});

  @override
  State <PantallaJuegoPulsar> createState() => _PantallaJuegoPulsarState();
}

class _PantallaJuegoPulsarState extends State<PantallaJuegoPulsar> {
  int _puntuacion = 0;
  int _tiempoJuego = 20; // Tiempo total del juego
  Timer? _timerJuego;
  Timer? _timerImagen;
  bool _jugando = false;

  // Posición aleatoria de la imagen
  double _top = 0;
  double _left = 0;
  bool _imagenVisible = false;

  final Random _random = Random();

  void _iniciarJuego() {
    setState(() {
      _puntuacion = 0;
      _tiempoJuego = 20;
      _jugando = true;
      _imagenVisible = false;
    });
    _iniciarTimerJuego();
    _iniciarTimerImagen();
  }

  void _iniciarTimerJuego() {
    _timerJuego?.cancel();
    _timerJuego = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_tiempoJuego > 0) {
        setState(() {
          _tiempoJuego--;
        });
      } else {
        _terminarJuego();
      }
    });
  }

  void _iniciarTimerImagen() {
    _timerImagen?.cancel();
    _timerImagen = Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      if (_jugando) {
        _moverImagen();
      }
    });
  }

  void _moverImagen() {
    final Size size = MediaQuery.of(context).size;
    // Nos aseguramos que la imagen quepa en pantalla
    // Restamos 80 (tamaño de imagen) y 56 (altura de AppBar)
    setState(() {
      _top = _random.nextDouble() * (size.height - 140); // 80 + 56 + padding
      _left = _random.nextDouble() * (size.width - 80);
      _imagenVisible = true;
    });
  }

  void _onTapImagen() {
    if (!_jugando || !_imagenVisible) return;

    setState(() {
      _puntuacion++;
      _imagenVisible = false; // Oculta al acertar
    });
    _timerImagen?.cancel(); // Cancela el timer actual
    _iniciarTimerImagen(); // Inicia uno nuevo para que no sea predecible
  }

  void _onTapFondo() {
    // Penalización por pulsar fuera
    if (!_jugando) return;
    setState(() {
      _puntuacion -= 2;
    });
  }

  void _terminarJuego() {
    _timerJuego?.cancel();
    _timerImagen?.cancel();
    setState(() {
      _jugando = false;
      _imagenVisible = false;
    });
    // Mostrar diálogo
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¡Juego Terminado!'),
          content: Text('Puntuación final: $_puntuacion'),
          actions: <Widget>[
            TextButton(
              child: const Text('Reiniciar'),
              onPressed: () {
                Navigator.of(context).pop();
                _iniciarJuego();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _timerJuego?.cancel();
    _timerImagen?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pulsar Imagen (Ejer 13)')),
      drawer: const MenuDrawer(),
      body: GestureDetector(
        onTap: _onTapFondo, // Detecta taps en el fondo
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors
              .grey[200], // Color de fondo para que funcione el GestureDetector
          child: Stack(
            children: [
              // Información del juego
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Tiempo: $_tiempoJuego | Puntos: $_puntuacion',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // Botón de Iniciar
              if (!_jugando)
                const Center(child: Text('Pulsa "Iniciar" para jugar')),

              // La imagen que se mueve
              if (_jugando && _imagenVisible)
                AnimatedPositioned(
                  duration: const Duration(
                    milliseconds: 100,
                  ), // Animación sutil de movimiento
                  top: _top,
                  left: _left,
                  child: GestureDetector(
                    onTap: _onTapImagen, // Detecta taps solo en la imagen
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset('assets/image1.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _iniciarJuego,
        tooltip: 'Iniciar Juego',
        child: Icon(_jugando ? Icons.stop : Icons.play_arrow),
      ),
    );
  }
}
