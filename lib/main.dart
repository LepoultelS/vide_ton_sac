import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Home(),
  ));
}

var black = const Color(0xFF000000);
var minth = const Color(0xFF3DE3B5);
var white = const Color(0xFFFFFFFF);
var trans = const Color(0x00000000);
var sad = "J'ai raté mon repas, Ca m'a vraiment déprimé. J'ai "
    "passé trois heures à le préparer, tout ça pour rien..";
var ang = "Edouard m'a mis hors de moi. Il a oublié ses clés "
    "de voiture, alors qu'on était en retard, et j'ai raté "
    "mon RDV.";

class Home extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.center,
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
                  child: ElevatedButton(
                    child: Text(
                      sad,
                      style: TextStyle(
                        color: white,
                        fontSize: 24,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(minth),
                      elevation: MaterialStateProperty.all(0.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sadness()),
                      );
                    },
                  ),
                  margin: const EdgeInsets.only(top: 5.0, bottom: 100.0),
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                      color: minth,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      )),
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
                  child: ElevatedButton(
                    child: Text(
                      ang,
                      style: TextStyle(
                        color: white,
                        fontSize: 24,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      elevation: MaterialStateProperty.all(0.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Anger()),
                      );
                    },
                  ),
                  margin: const EdgeInsets.only(top: 5.0, bottom: 50.0),
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Sadness extends StatelessWidget {
  final _formKeySad = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tristesse'),
        backgroundColor: minth,
      ),
      body: Column(children: [
        Text(
          "Ajouter une tristesse",
          style: TextStyle(
            color: minth,
            fontSize: 18,
          ),
        ),
        TextField(
          key: _formKeySad,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Text("Valider"),
        )
      ]),
    );
  }
}

class Anger extends StatelessWidget {
  final _formKeyAng = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colère'),
        backgroundColor: Colors.red,
      ),
      body: Column(children: [
        Text(
          "Ajouter une colère",
          style: TextStyle(
            color: Colors.red,
            fontSize: 18,
          ),
        ),
        TextFormField(
          key: _formKeyAng,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            ang = _formKeyAng.currentState.toString();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Text("Valider"),
        )
      ]),
    );
  }
}
