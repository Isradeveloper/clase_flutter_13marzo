import 'package:flutter/material.dart';

class wCajasTexto extends StatefulWidget {
  const wCajasTexto({super.key});

  @override
  State<wCajasTexto> createState() => _wCajasTextoState();
}

class _wCajasTextoState extends State<wCajasTexto> {
  TextEditingController ctnNombre = TextEditingController();
  TextEditingController ctnPrecio = TextEditingController();
  TextEditingController ctnReferencia = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("wCajasTexto"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            CrearCaja(cnt: ctnNombre, label: "Nombre"),
            CrearCaja(cnt: ctnPrecio, label: "Precio"),
            CrearCaja(cnt: ctnReferencia, label: "Referencia"),
            ElevatedButton(onPressed: () {}, child: const Text("Guardar"))
          ],
        ),
      ),
    );
  }
}

class CrearCaja extends StatelessWidget {
  final TextEditingController cnt;
  final String label;

  const CrearCaja({super.key, required this.cnt, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: cnt,
      decoration: InputDecoration(labelText: label),
    );
  }
}
