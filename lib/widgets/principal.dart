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
                  child: const Text("Radio button"))
            ],
          ),
        ));
  }
}
