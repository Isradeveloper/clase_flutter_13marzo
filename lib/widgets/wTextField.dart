import 'package:flutter/material.dart';

class WTextField extends StatefulWidget {
  const WTextField({super.key});

  @override
  State<WTextField> createState() => _WTextFieldState();
}

class _WTextFieldState extends State<WTextField> {
  TextEditingController nota1 = TextEditingController();
  TextEditingController nota2 = TextEditingController();
  double resultado = 0;
  String estado = "";

  void calcularNota() {
    double nota1Value = double.parse(nota1.text);
    double nota2Value = double.parse(nota2.text);

    setState(() {
      resultado = (nota1Value + nota2Value) / 2;

      estado = resultado >= 2.5 ? "y Aprobó" : "y Reprobó";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text field - Calcular nota'),
        ),
        body: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Digite nota 1"),
                controller: nota1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Digite nota 2"),
                controller: nota2,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: calcularNota, child: const Text("Calcular")),
              const SizedBox(height: 30),
              Text("SU NOTA ES: $resultado $estado"),
            ],
          ),
        ));
  }
}
