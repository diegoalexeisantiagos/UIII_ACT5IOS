import 'package:flutter/material.dart';

void main() => runApp(MiTarjetaApp());

class MiTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarjetas de Santiago'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ], //fin widget appbar[]
          ), //fin appbar
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/diegoalexeisantiagos/mis-imagenes/main/image.png', 'Santiago'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/diegoalexeisantiagos/mis-imagenes/main/joyeriasostenible-t.jpg', 'La Joyeria'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/diegoalexeisantiagos/mis-imagenes/main/png-clipart-panda-holding-four-banknotes-illustration-emote-twitch-emoticon-dogecoin-others-text-fictional-character.png', 'ELPandaMoney'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/diegoalexeisantiagos/mis-imagenes/main/Pico_de_diamante.png', 'Pico de minecraft'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/diegoalexeisantiagos/mis-imagenes/main/FIRE.jpg', 'Fenix'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://raw.githubusercontent.com/diegoalexeisantiagos/mis-imagenes/main/175483079_4031320206903232_5885354851396819894_n.png', 'Protogema'),
                SizedBox(
                  height: 5.0,
                ),
              ], //fin de widget del list view[]
            ), //fin de listview
          ), //fin de container
        ) //fin de scaffold
        ); //fin de materialapp
  } //fin de widget en mitarjetaapp

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.grey,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('Profe pongame 10', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //fin de clase mitarjetaapp