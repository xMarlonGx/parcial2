import 'package:flutter/material.dart';
import 'package:parcial2/constantes/const.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int activoMenu1 = 0;
  int activoMenu2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: mostrarAppBar(),
      ),
      body: bodyPrincipal(),
    );
  }

  Widget mostrarAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding:
            const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 35,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 35,
            )
          ],
        ),
      ),
    );
  }

  Widget bodyPrincipal() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Bloque 1
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(menu_home.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              activoMenu1 = index;
                            });
                          },
                          child: Text(
                            menu_home[index],
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.white,
                              elevation: 0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(35.0),
                              ),
                              primary: activoMenu1 == index
                                  ? Colors.black
                                  : Colors.white,
                              onPrimary: activoMenu1 == index
                                  ? Colors.white
                                  : Colors.black),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //Bloque 2

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(sillas.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Stack(children: [
                            Center(
                              child: Container(
                                width: 175,
                                height: 175,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(24),
                                  image: DecorationImage(
                                      image: AssetImage(activoMenu1 == 0
                                          ? sillas[index]['img']
                                          : activoMenu1 == 1
                                              ? muebles[index]['img']
                                              : activoMenu1 == 2
                                                  ? camas[index]['img']
                                                  : activoMenu1 == 3
                                                      ? cunas[index]['img']
                                                      : cuadros[index]['img']),
                                      fit: activoMenu1 == 0
                                          ? BoxFit.none
                                          : BoxFit.contain),
                                ),
                              ),
                            ),

                            // circulo
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 130, top: 15),
                              child: Container(
                                alignment: Alignment.bottomRight,
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 0.4),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ),

                            //

                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 135, top: 20),
                              child: Container(
                                // ignore: prefer_const_constructors
                                child: Icon(
                                  Icons.favorite,
                                  size: 15,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ]),

                          /////// espacio
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 10,
                          ),

                          Center(
                            child: Text(
                              activoMenu1 == 0
                                  ? sillas[index]['nombre']
                                  : activoMenu1 == 1
                                      ? muebles[index]['nombre']
                                      : activoMenu1 == 2
                                          ? camas[index]['nombre']
                                          : activoMenu1 == 3
                                              ? cunas[index]['nombre']
                                              : cuadros[index]['nombre'],
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),

                          //
                          Center(
                            child: Text(
                              activoMenu1 == 0
                                  ? sillas[index]['precio']
                                  : activoMenu1 == 1
                                      ? muebles[index]['precio']
                                      : activoMenu1 == 2
                                          ? camas[index]['precio']
                                          : activoMenu1 == 3
                                              ? cunas[index]['precio']
                                              : cuadros[index]['precio'],
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),

              // Descripcion
            ),
          ),

          // Bloque 3

          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(menu_home.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              activoMenu2 = index;
                            });
                          },
                          child: Text(
                            menu_home[index],
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.white,
                              elevation: 0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(35.0),
                              ),
                              primary: activoMenu2 == index
                                  ? Colors.black
                                  : Colors.white,
                              onPrimary: activoMenu2 == index
                                  ? Colors.white
                                  : Colors.black),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // Bloque 4

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(sillas.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Stack(children: [
                            Center(
                              child: Container(
                                width: 175,
                                height: 175,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(24),
                                  image: DecorationImage(
                                      image: AssetImage(activoMenu2 == 0
                                          ? sillas[index]['img']
                                          : activoMenu2 == 1
                                              ? muebles[index]['img']
                                              : activoMenu2 == 2
                                                  ? camas[index]['img']
                                                  : activoMenu2 == 3
                                                      ? cunas[index]['img']
                                                      : cuadros[index]['img']),
                                      fit: activoMenu2 == 0
                                          ? BoxFit.none
                                          : BoxFit.contain),
                                ),
                              ),
                            ),

                            // circulo
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 130, top: 15),
                              child: Container(
                                alignment: Alignment.bottomRight,
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 0.4),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ),

                            //

                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 135, top: 20),
                              child: Container(
                                // ignore: prefer_const_constructors
                                child: Icon(
                                  Icons.favorite,
                                  size: 15,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ]),

                          /////// espacio
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 10,
                          ),

                          Center(
                            child: Text(
                              activoMenu2 == 0
                                  ? sillas[index]['nombre']
                                  : activoMenu2 == 1
                                      ? muebles[index]['nombre']
                                      : activoMenu2 == 2
                                          ? camas[index]['nombre']
                                          : activoMenu2 == 3
                                              ? cunas[index]['nombre']
                                              : cuadros[index]['nombre'],
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),

                          //
                          Center(
                            child: Text(
                              activoMenu1 == 0
                                  ? sillas[index]['precio']
                                  : activoMenu1 == 1
                                      ? muebles[index]['precio']
                                      : activoMenu1 == 2
                                          ? camas[index]['precio']
                                          : activoMenu1 == 3
                                              ? cunas[index]['precio']
                                              : cuadros[index]['precio'],
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),

              // Descripcion
            ),
          ),
        ],
      ),
    );
  }
}
