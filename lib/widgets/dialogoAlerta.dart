import 'package:flutter/material.dart';

class dialogoAlerta extends StatefulWidget {
  const dialogoAlerta({super.key});

  @override
  State<dialogoAlerta> createState() => _dialogoAlertaState();
}

class _dialogoAlertaState extends State<dialogoAlerta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo dialogo de alerta"),
        centerTitle: true,
        // toolbarHeight: 40,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        backgroundColor: Colors.purple,
      ),
      body: Container(
          margin: const EdgeInsets.all(10),
          child: ElevatedButton(
              onPressed: () {
                mostrarNotificacion();
              },
              child: const Text("Guardar"))),
    );
  }

  mostrarNotificacion() {
    Widget okBoton = TextButton(onPressed: () {}, child: const Text("Aceptar"));

    AlertDialog alert = AlertDialog(
      title: const Text("Notificación"),
      content: const Text("Este es un mensaje"),
      actions: [okBoton, okBoton],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
