import 'package:flutter/material.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaActividad15 extends StatefulWidget {
  const PantallaActividad15({super.key});

  @override
  State<PantallaActividad15> createState() => _PantallaActividad15State();
}

class _PantallaActividad15State extends State<PantallaActividad15> {
  // Variable para el Switch principal
  bool _vacacionesEnPlaya = true;

  // Variables para las opciones de PLAYA
  bool _gustaBuceo = false;
  bool _gustaTomarSol = false;

  // Variables para las opciones de MONTAÑA
  bool _gustaSenderismo = false;
  bool _gustaEscalada = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Actividad 15: Vacaciones (E15)")),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text(
              "Selecciona tu destino preferido:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // 1. EL SWITCH PRINCIPAL
            // Uso SwitchListTile para que tenga texto al lado
            SwitchListTile(
              title: Text(
                _vacacionesEnPlaya
                    ? "Prefiero la PLAYA"
                    : "Prefiero la MONTAÑA",
              ),
              subtitle: const Text("Actívalo para ver opciones de playa"),
              activeColor: Colors.blue, // Color azul para playa
              inactiveThumbColor: Colors.green, // Color verde para montaña
              value: _vacacionesEnPlaya,
              onChanged: (bool valor) {
                setState(() {
                  _vacacionesEnPlaya = valor;
                  // Opcional: Reseteamos los checkboxes al cambiar de modo
                  _gustaBuceo = false;
                  _gustaTomarSol = false;
                  _gustaSenderismo = false;
                  _gustaEscalada = false;
                });
              },
            ),

            const Divider(thickness: 2), // Una línea separadora
            // 2. LÓGICA CONDICIONAL: Si es true mostramos formulario de Playa, si es false el de Montaña
            if (_vacacionesEnPlaya)
              _mostrarOpcionesPlaya()
            else
              _mostrarOpcionesMontana(),

            const SizedBox(height: 20),

            // Botón para ver en consola lo que has elegido
            ElevatedButton(
              onPressed: () {
                if (_vacacionesEnPlaya) {
                  print(
                    "Destino: Playa. Buceo: $_gustaBuceo, Sol: $_gustaTomarSol",
                  );
                } else {
                  print(
                    "Destino: Montaña. Senderismo: $_gustaSenderismo, Escalada: $_gustaEscalada",
                  );
                }
              },
              child: const Text("Guardar Selección"),
            ),
          ],
        ),
      ),
    );
  }

  // Formulario A: Opciones de Playa
  Widget _mostrarOpcionesPlaya() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Actividades Acuáticas:",
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
        CheckboxListTile(
          title: const Text("Hacer Buceo"),
          secondary: const Icon(Icons.water),
          value: _gustaBuceo,
          onChanged: (bool? valor) {
            setState(() {
              _gustaBuceo = valor!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Tomar el sol"),
          secondary: const Icon(Icons.wb_sunny),
          value: _gustaTomarSol,
          onChanged: (bool? valor) {
            setState(() {
              _gustaTomarSol = valor!;
            });
          },
        ),
      ],
    );
  }

  // Formulario B: Opciones de Montaña
  Widget _mostrarOpcionesMontana() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Actividades de Montaña:",
          style: TextStyle(fontSize: 18, color: Colors.green),
        ),
        CheckboxListTile(
          title: const Text("Hacer Senderismo"),
          secondary: const Icon(Icons.directions_walk),
          value: _gustaSenderismo,
          onChanged: (bool? valor) {
            setState(() {
              _gustaSenderismo = valor!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Escalada"),
          secondary: const Icon(Icons.terrain),
          value: _gustaEscalada,
          onChanged: (bool? valor) {
            setState(() {
              _gustaEscalada = valor!;
            });
          },
        ),
      ],
    );
  }
}
