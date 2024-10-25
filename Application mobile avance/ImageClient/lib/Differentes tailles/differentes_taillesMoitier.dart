import 'package:flutter/material.dart';

class differentes_taillesMoitier extends StatefulWidget {
  const differentes_taillesMoitier({super.key});

  @override
  State<differentes_taillesMoitier> createState() => _differentes_taillesMoitierState();
}

class _differentes_taillesMoitierState extends State<differentes_taillesMoitier> {
  @override
  Widget build(BuildContext context) {

    Image image = Image.network("https://fourn6-mobile-prof.onrender.com/exos/image");
    final screenSize = MediaQuery.of(context).size;


    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          backgroundColor: Color(0xFFFFFFFF),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Différents tailles'),
        ),
        body: SizedBox(
    width: screenSize.width/2,
    child: image)
    );
  }
}