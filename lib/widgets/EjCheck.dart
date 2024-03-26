import 'package:flutter/material.dart';

class EjCheck extends StatefulWidget {
  const EjCheck({super.key});

  @override
  State<EjCheck> createState() => _EjCheckState();
}

class _EjCheckState extends State<EjCheck> {
  bool estado = false;
  String terminos = "Acepto los terminos y condiciones";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo CheckBox"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Checkbox(
                value: estado,
                onChanged: (value) {
                  setState(() {
                    estado = !estado;
                  });
                }),
          ),
          Text(terminos),
          Text("$estado")
        ],
      ),
    );
  }
}
