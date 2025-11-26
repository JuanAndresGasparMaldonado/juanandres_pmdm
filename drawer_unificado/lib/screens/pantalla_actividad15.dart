import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:drawer_unificado/widgets/menu_drawer.dart';

class PantallaActividad15 extends StatefulWidget {
  const PantallaActividad15({super.key});

  @override
  State<PantallaActividad15> createState() => _PantallaActividad15State();
}

class _PantallaActividad15State extends State<PantallaActividad15> {
  // Esta es la variable principal, controla si estamos en modo Playa o Montaña
  bool _esPlaya = true;

  // Variables para las opciones de PLAYA
  bool _gustaBuceo = false;
  bool _gustaSurf = false;

  // Variables para las opciones de MONTAÑA
  bool _gustaSenderismo = false;
  bool _gustaEscalada = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Actividad 15: Formularios (E15)")),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text(
              "Datos Personales:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // 1. Campo Nombre: Solo permite letras y espacios
            TextField(
              decoration: const InputDecoration(
                labelText: 'Nombre',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
              maxLength: 30,
              keyboardType: TextInputType.name,
              inputFormatters: [
                // Permite solo letras (a-z) y espacios. Incluyo ñ y tildes básicas.
                FilteringTextInputFormatter.allow(
                  RegExp(r'[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]'),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // 2. Campo Edad: Solo permite números
            TextField(
              decoration: const InputDecoration(
                labelText: 'Edad',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.calendar_today),
              ),
              maxLength: 3,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter
                    .digitsOnly, // No permite nada que no sea números
              ],
            ),
            const SizedBox(height: 10),

            // 3. Campo Teléfono: Teclado numérico y solo números
            TextField(
              decoration: const InputDecoration(
                labelText: 'Teléfono',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
              maxLength: 15,
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),

            const SizedBox(height: 20),
            const Divider(thickness: 2),
            const SizedBox(height: 20),

            // --- Formulario PLAYA O MONTAÑA ---
            const Text(
              "Elige tu destino:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // Switch principal
            SwitchListTile(
              title: Text(_esPlaya ? "Modo: PLAYA 🏖️" : "Modo: MONTAÑA 🏔️"),
              subtitle: const Text("Toca para cambiar de destino"),
              activeColor: Colors.blue,
              inactiveThumbColor: Colors.brown,
              value: _esPlaya,
              onChanged: (bool valor) {
                setState(() {
                  _esPlaya = valor;
                  _gustaBuceo = false;
                  _gustaSurf = false;
                  _gustaSenderismo = false;
                  _gustaEscalada = false;
                });
              },
            ),

            const SizedBox(height: 10),

            // Lógica condicional: ¿Es playa o montaña?
            if (_esPlaya) _formularioPlaya() else _formularioMontana(),
          ],
        ),
      ),
    );
  }

  // Opciones para Playa
  Widget _formularioPlaya() {
    return Column(
      children: [
        const Text(
          "Opciones de Playa",
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
          title: const Text("Hacer Surf"),
          secondary: const Icon(Icons.surfing),
          value: _gustaSurf,
          onChanged: (bool? valor) {
            setState(() {
              _gustaSurf = valor!;
            });
          },
        ),
      ],
    );
  }

  // Opciones para Montaña
  Widget _formularioMontana() {
    return Column(
      children: [
        const Text(
          "Opciones de Montaña",
          style: TextStyle(fontSize: 18, color: Colors.brown),
        ),
        CheckboxListTile(
          title: const Text("Senderismo"),
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
