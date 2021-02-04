import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var black = const Color(0xFF000000);
var minth = const Color(0xFF3DE3B5);
var white = const Color(0xFFFFFFFF);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vide ton sac',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vide ton sac !'),
          backgroundColor: black,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Tristesse',
                style: TextStyle(
                  color: minth,
                  fontSize: 18,
                ),
              ),
              Center(
                child: Container(
                  child: Text(
                    "J'ai raté mon repas, Ca m'a vraiment déprimé. J'ai "
                    "passé trois heures à le préparer, tout ça pour rien..",
                    style: TextStyle(
                      color: white,
                      fontSize: 18,
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 5.0,bottom: 50.0),
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: minth,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )
                  ),
                ),
              ),
              Text(
                'Colère',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
              Center(
                child: Container(
                  child: Text(
                    "Edouard m'a mis hors de moi. Il a oublié ses clés "
                    "de voiture, alors qu'on était en retard, et j'ai raté "
                    "mon RDV.",
                    style: TextStyle(
                      color: white,
                      fontSize: 18,
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 5.0,bottom: 50.0),
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
