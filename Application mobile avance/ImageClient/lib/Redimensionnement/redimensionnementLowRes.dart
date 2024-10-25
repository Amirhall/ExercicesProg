import 'package:flutter/material.dart';

class redimensionnementLowRes extends StatefulWidget {
  const redimensionnementLowRes({super.key});

  @override
  State<redimensionnementLowRes> createState() => _redimensionnementLowResState();
}

class _redimensionnementLowResState extends State<redimensionnementLowRes> {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    Image image = Image.network("https://fourn6-mobile-prof.onrender.com/exos/image");



    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          backgroundColor: Color(0xFFFFFFFF),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Redimentionnement'),
        ),
        body: Container(
          child: Image.network("https://fourn6-mobile-prof.onrender.com/exos/image"),
        )
    );
  }
}