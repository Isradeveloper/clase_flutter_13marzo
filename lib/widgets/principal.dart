import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("PRINCIPAL")),
        body: SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/diseno1');
                  },
                  child: const Text("Diseño uno")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/wText');
                  },
                  child: const Text("W text")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/wRichText');
                  },
                  child: const Text("W text rich")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/wTextField');
                  },
                  child: const Text("W text field")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/RadioButton');
                  },
                  child: const Text("Radio button")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Checkbox');
                  },
                  child: const Text("Checkbox")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/BotonFlotante');
                  },
                  child: const Text("Boton Flotante")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/wCajasTexto');
                  },
                  child: const Text("W cajas texto")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dialog');
                  },
                  child: const Text("Dialog alert")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pestana');
                  },
                  child: const Text("Pestañas")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/rating');
                  },
                  child: const Text("Rating")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/diseno4');
                  },
                  child: const Text("Diseno4")),
            ],
          ),
        ));
  }
}
