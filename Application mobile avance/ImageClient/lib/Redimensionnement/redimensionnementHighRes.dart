import 'package:flutter/material.dart';

class redimensionnementHighRes extends StatefulWidget {
  const redimensionnementHighRes({super.key});

  @override
  State<redimensionnementHighRes> createState() => _redimensionnementHighResState();
}

class _redimensionnementHighResState extends State<redimensionnementHighRes> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          backgroundColor: Color(0xFFFFFFFF),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Redimentionnement'),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index){
              return Image.network("https://fourn6-mobile-prof.onrender.com/exos/image");

            })
    );
  }
}