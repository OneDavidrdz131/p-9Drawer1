import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerOrtega());

class MiDrawerOrtega extends StatelessWidget {
  const MiDrawerOrtega({Key? key}) : super(key: key);

  get accountName => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Rodriguez"),
          centerTitle: true,
          backgroundColor: const Color(0xff044dec),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.account_balance_wallet_sharp,
              ),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: const Color(0xff5f5d58),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("David Rodriguez jurado"),
                accountEmail: Text("a.21308051280543@cbtis128.edu.mx"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Ford_logo.svg/300px-Ford_logo.svg.png"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://s3-us-west-2.amazonaws.com/my-car-mexico/modelos/8ccf76af/Ford-Mustang-Shelby-GT500-1.1.webp",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://hips.hearstapps.com/hmg-prod/images/2024-ford-f-150-raptor-07-64ff719e60eb4.jpg?crop=1.00xw:0.878xh;0,0&resize=1200:*"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://cdn.motor1.com/images/mgl/9myjK1/s2/cover-novita-2024-ford-oldtemplate.webp"),
                  ),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.phone, color: Color(0xff585a66)),
                title: Text("Contacto",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.person, color: Color(0xff4d4e52)),
                title: Text("Servicio",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading:
                    Icon(Icons.card_travel_sharp, color: Color(0xff4a4b52)),
                title: Text("Citas",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.curtains_closed, color: Color(0xff4e4f52)),
                title: Text("Catalogo",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.public, color: Color(0xff505157)),
                title: Text("Sucursales",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
