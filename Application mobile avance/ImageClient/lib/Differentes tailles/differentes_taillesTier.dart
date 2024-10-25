import 'package:flutter/material.dart';

class differentes_taillesTier extends StatefulWidget {
  const differentes_taillesTier({super.key});

  @override
  State<differentes_taillesTier> createState() => _differentes_taillesTierState();
}

class _differentes_taillesTierState extends State<differentes_taillesTier> {
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
          title: Text('Tier'),
        ),
        body: SizedBox(
            width: screenSize.width/3,
            child: image)
    );
  }
}