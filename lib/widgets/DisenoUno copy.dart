import 'package:flutter/material.dart';

class diseno1 extends StatelessWidget {
  const diseno1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DISEÑO 1")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(child: parteSuperior(context)),
            Positioned(top: 160, child: parteIntermedia(context)),
            const Positioned(
                top: 340, left: 10, child: Text("Movimientos Recientes")),
            Positioned(
                top: 350,
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width - 20,
                  margin: (const EdgeInsets.all(10)),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Movimientos("Calzado ABC", "300.000", Colors.red.shade50),
                      Movimientos(
                          "Burger Dnz", "300.000", Colors.purple.shade50),
                      Movimientos("pc gamer", "100.000", Colors.yellow.shade50),
                      Movimientos("mouse", "200.000", Colors.green.shade50),
                      Movimientos("Cargador", "80.000", Colors.orange.shade100),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget comidas(String img, String label, Color cl) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: cl,
          border: Border.all(color: Colors.black)),
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            img,
            width: 90,
          ),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget Movimientos(String movimiento, String costo, Color cl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: cl,
        // border: Border.all(color: Colors.black)
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            movimiento,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            costo,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget parteSuperior(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 19, 40, 82)),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Center(
          child: Text(
            "Mi Billetera",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          "Total",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          "\$1.200.000",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }

  Widget parteIntermedia(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 20, left: 40),
      width: MediaQuery.of(context).size.width - 80,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 170, 90, 154)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Center(
              child: Text(
                "Visa",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Credit Card",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "**** **** **** 9878",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3),
            ),
            Text(
              "Jose Rodelo",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
          ]),
    );
  }
}
