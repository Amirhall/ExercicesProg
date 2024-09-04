import 'package:flutter/material.dart';

class JolieListeBuilder extends StatefulWidget {
  const JolieListeBuilder({super.key});

  @override
  State<JolieListeBuilder> createState() => _JolieListeBuilderState();
}

class _JolieListeBuilderState extends State<JolieListeBuilder> {
  @override
  Widget build(BuildContext context) {
    int nombrePrecedant1 = 0;
    int nombrePrecedant2 = 1;
    int nombre = 0;
    List<int> liste = [];
    for (int i = 0; i < 50; i++) {
      nombre = nombrePrecedant1 + nombrePrecedant2;
      liste.add(nombre);
      nombrePrecedant1 = nombrePrecedant2;
      nombrePrecedant2 = nombre;
    }
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Color(0xFFFFFFFF),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Jolie liste builder'),
        ),
        body: ListView.builder(
            itemCount: liste.length,
            itemBuilder: (context, index) {
              return Container(

                  decoration: BoxDecoration(
                      color: Color(0xFF00BADB),
                      borderRadius: BorderRadius.circular(30.0)),
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(5.0),
                  child: ListTile(
                    title: Text(
                      '${liste[index]}',
                      style: TextStyle(color: Color(0xFF004CC7), fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                    tileColor: Color(0xFF00BADB),
                  ));
            })
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        );
  }
}
