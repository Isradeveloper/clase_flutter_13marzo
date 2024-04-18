import 'package:flutter/material.dart';

class Pestanas extends StatelessWidget {
  const Pestanas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PESTAÑAS'),
        bottom: const TabBar(tabs: [
          Tab(
            icon: Icon(Icons.abc),
          ),
          Tab(
            icon: Icon(Icons.abc),
          ),
          Tab(
            icon: Icon(Icons.abc),
          ),
          Tab(
            icon: Icon(Icons.abc),
          ),
          Tab(
            icon: Icon(Icons.abc),
          ),
        ]),
      ),
      body: TabBarView(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            child: const Text("Hola mundo"),
          ),
          const Icon(Icons.abc_sharp),
          const Icon(Icons.zoom_out_rounded),
          const Icon(Icons.access_alarm_outlined),
          const Icon(Icons.ac_unit_sharp),
        ],
      ),
    );
  }
}
