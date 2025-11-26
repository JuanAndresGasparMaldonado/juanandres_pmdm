import 'package:flutter/material.dart';
import 'dart:math';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class AdivinaSimple extends StatefulWidget {
  const AdivinaSimple({super.key});

  @override
  State<AdivinaSimple> createState() => _AdivinaSimpleState();
}

class _AdivinaSimpleState extends State<AdivinaSimple> {
  // Generamos el número secreto (entre 1 y 100)
  int numeroSecreto = Random().nextInt(100) + 1;
  
  // Variable para mostrar los mensajes al usuario
  String mensaje = "Introduce un número para empezar";

  // Controlador para leer lo que escribimoss en la caja de texto
  final TextEditingController _controller = TextEditingController();

  void comprobarNumero() {
    // Leemos el número del texto
    int? numeroUsuario = int.tryParse(_controller.text);

    if (numeroUsuario == null) return; // Si no es número, no hacemos nada

    setState(() {
      // Aquí se valida el número secreto
      if (numeroUsuario == numeroSecreto) {
        mensaje = "¡CORRECTO! El número era $numeroSecreto. Has ganado.";
      } else if (numeroUsuario < numeroSecreto) {
        mensaje = "El número secreto es MAYOR que $numeroUsuario.";
      } else {
        mensaje = "El número secreto es MENOR que $numeroUsuario.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Adivina el Número (E14)")),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mostramos el mensaje (Pista o Ganaste)
            Text(
              mensaje,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 20),

            // El campo para escribir
            TextField(
              controller: _controller,
              // Ponemos el teclado numérico para facilitar la entrada
              keyboardType: TextInputType.number, 
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribe tu número aquí',
              ),
            ),

            const SizedBox(height: 20),

            // El botón para validar
            ElevatedButton(
              onPressed: comprobarNumero,
              child: const Text("Comprobar"),
            )
          ],
        ),
      ),
    );
  }
}