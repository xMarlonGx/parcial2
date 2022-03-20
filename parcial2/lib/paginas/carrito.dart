// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:parcial2/constantes/const.dart';

class Carrito extends StatefulWidget {
  Carrito({Key? key}) : super(key: key);

  @override
  State<Carrito> createState() => _CarritoState();
}

class _CarritoState extends State<Carrito> {
  bool activo1 = true;
  bool activo2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 25,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: mostrarAppBar(),
      ),
      body: bodyCarrito(),
    );
  }

  Widget mostrarAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Center(
        child: Container(
            padding: EdgeInsets.only(right: 50, top: 5),
            child: Text(
              "Cart",
              style: TextStyle(color: Colors.black, fontSize: 25),
            )),
      ),
    );
  }

  Widget bodyCarrito() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              activo1 == true
                  ? Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Container(
                            width: 100,
                            height: 125,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 220, 226, 190),
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage(sillas[0]['img']),
                                    scale: 1.5)),
                          ),
                        ),
                        // Descripcion
                        Padding(
                            padding: const EdgeInsets.only(left: 140, top: 25),
                            child: Container(
                                child: Text(
                              sillas[0]['nombre'],
                              style: TextStyle(fontSize: 20),
                            ))),
                        Padding(
                            padding: const EdgeInsets.only(left: 140, top: 50),
                            child: Container(
                                child: Text(
                              sillas[0]['precio'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))),
                        // boton x 1
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              activo1 = false;
                              print(activo1);
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40, left: 340),
                            child: Transform.rotate(
                              angle: 95,
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              // Imagen

              // Bloque 2 imagen

              activo2 == true
                  ? Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 150,
                            left: 20,
                          ),
                          child: Container(
                            width: 100,
                            height: 125,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 220, 226, 190),
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage(sillas[1]['img']),
                                    scale: 1.5)),
                          ),
                        ),
                        // Descripcion
                        Padding(
                            padding: const EdgeInsets.only(left: 140, top: 150),
                            child: Container(
                                child: Text(
                              sillas[0]['nombre'],
                              style: TextStyle(fontSize: 20),
                            ))),
                        Padding(
                            padding: const EdgeInsets.only(left: 140, top: 175),
                            child: Container(
                                child: Text(
                              sillas[0]['precio'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))),
                        // boton x 2
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              activo2 = false;
                              print(activo2);
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 180, left: 340),
                            child: Transform.rotate(
                              angle: 95,
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 50,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  : Container(),
              // Total

              Padding(
                padding: EdgeInsets.only(top: 550, left: 30),
                child: Text(
                  "Total: ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),

              activo1 == false && activo2 == false
                  ? Padding(
                      padding: EdgeInsets.only(top: 550, left: 285),
                      child: Text(
                        "\$0.00",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )
                  : Container(),

              activo1 == false && activo2 == true
                  ? Padding(
                      padding: EdgeInsets.only(top: 550, left: 285),
                      child: Text(
                        "\$24.99",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )
                  : Container(),

              activo1 == true && activo2 == false
                  ? Padding(
                      padding: EdgeInsets.only(top: 550, left: 285),
                      child: Text(
                        "\$24.99",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )
                  : Container(),

              activo1 == true && activo2 == true
                  ? Padding(
                      padding: EdgeInsets.only(top: 550, left: 285),
                      child: Text(
                        "\$48.98",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )
                  : Container(),

              //Boton

              Padding(
                padding: const EdgeInsets.only(top: 600, left: 30),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      activo1 = true;
                      activo2 = true;
                    });
                  },
                  child: Text(
                    "Pagar",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 148, 131, 74),
                      shadowColor: Color.fromARGB(255, 212, 231, 197),
                      // ignore: unnecessary_new
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 0,
                      fixedSize: const Size(350, 50)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
