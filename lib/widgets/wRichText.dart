import 'package:flutter/material.dart';

class WRichText extends StatelessWidget {
  const WRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Texto enriquecido'),
      ),
      body: RichText(
          text: TextSpan(text: "Flutter", children: [
        TextSpan(
            text: "Frame",
            style: TextStyle(
                color: Colors.red.shade200, fontWeight: FontWeight.bold)),
        TextSpan(
            text: "Work",
            style: TextStyle(
                color: Colors.blue.shade200, fontWeight: FontWeight.bold))
      ])),
    );
  }
}
