import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String genero = "Masculino";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(title: Text('Radio Button'))),
      body: Column(
        children: [
          RadioListTile(
              title: const Text("Masculino"),
              value: "Masculino",
              groupValue: genero,
              onChanged: ((value) {
                setState(() {
                  genero = value.toString();
                });
              })),
          RadioListTile(
              title: const Text("Femenino"),
              value: "Femenino",
              groupValue: genero,
              onChanged: ((value) {
                setState(() {
                  genero = value.toString();
                });
              })),
          Text(genero)
        ],
      ),
    );
  }
}
