import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DisenoUno extends StatelessWidget {
  const DisenoUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DISEÑO UNO")),
      body: Stack(children: [
        Positioned(top: 20, child: ParteSuperior()),
        Positioned(top: 150, child: ParteIntermedia()),
        Positioned(
          top: 400,
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 20,
            margin: const EdgeInsets.all(10),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Movimiento(
                  movimiento: "Prueba",
                  costo: "300000",
                  color: Colors.amber.shade100,
                ),
                Movimiento(movimiento: "Burger", costo: "50000"),
                Movimiento(movimiento: "Pc gamer", costo: "300000000"),
                Movimiento(movimiento: "Mouse", costo: "10000"),
                Movimiento(movimiento: "Cargador", costo: "80000"),
                // Card(
                //   imagen: "assets/imagenes/papas.png",
                //   label: "Papas",
                // ),
                // Card(
                //   imagen: "assets/imagenes/papas.png",
                //   label: "Papas",
                // ),
                // Card(
                //   imagen: "assets/imagenes/papas.png",
                //   label: "Papas",
                // ),
                // Card(
                //   imagen: "assets/imagenes/papas.png",
                //   label: "Papas",
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class Card extends StatelessWidget {
  final String imagen;
  final String label;

  const Card({super.key, required this.imagen, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imagen,
            width: 200,
          ),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Movimiento extends StatelessWidget {
  final String movimiento;
  final String costo;
  final Color? color;

  const Movimiento(
      {super.key, required this.movimiento, required this.costo, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color ?? Colors.purple.shade100,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        // border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(movimiento, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(costo, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class ParteSuperior extends StatelessWidget {
  const ParteSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 35, 2, 131),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Mi billetera",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Total",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Text("\$1200000",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class ParteIntermedia extends StatelessWidget {
  const ParteIntermedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 30, left: 40),
      width: MediaQuery.of(context).size.width - 80,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 103, 2, 131),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Mi billetera",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Total",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Text("\$1200000",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
