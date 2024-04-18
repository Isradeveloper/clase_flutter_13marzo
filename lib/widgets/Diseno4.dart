import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DisenoCuatro extends StatelessWidget {
  const DisenoCuatro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Image.asset(
              "assets/imagenes/papas.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hola",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text("Mundo", style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
                Icon(Icons.star),
                Text("1")
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.favorite), Text("Favoritos")],
                ),
                Column(
                  children: [Icon(Icons.favorite), Text("Favoritos")],
                ),
                Column(
                  children: [Icon(Icons.favorite), Text("Favoritos")],
                )
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 20),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    Text(
                      "Do est ullamco officia sint magna Lorem mollit nisi qui in incididunt velit laboris. Irure tempor ipsum id nisi duis officia anim Lorem cupidatat nulla. Ea elit anim pariatur deserunt do elit minim ad. Minim ipsum culpa Lorem anim excepteur qui amet laboris ad eu exercitation dolore excepteur in. Nisi nisi magna incididunt nostrud. Dolore esse magna eu incididunt. Occaecat elit in elit occaecat aliqua proident sint proident id aliqua in.",
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
