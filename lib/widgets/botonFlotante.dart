import 'package:flutter/material.dart';

class BotonFlotante extends StatelessWidget {
  const BotonFlotante({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo Boton flotante"),
      ),
      body: const Center(
        child: Column(
          children: [Text("Bienvenido"), Text("Desarrollo")],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: const Icon(Icons.adb),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.pause),
            Icon(Icons.stop),
            Icon(Icons.play_arrow),
          ],
        ),
      ),
    );
  }
}
