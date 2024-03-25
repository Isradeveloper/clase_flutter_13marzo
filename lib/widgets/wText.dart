import 'package:flutter/material.dart';

class WText extends StatelessWidget {
  const WText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Isra')),
      body: const Center(child: Text('Hola mundo')),
    );
  }
}
