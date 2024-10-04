import 'dart:io';

import 'package:flutter/material.dart';
import 'package:formatif2013/nom_page1.dart';
class nom_page3 extends StatefulWidget {
  const nom_page3({super.key});
  @override
  State<nom_page3> createState() => _nom_page3State();
}

class _nom_page3State extends State<nom_page3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children:[
          InkWell(
          child: Container(

          width: 300,
          height: 300,color: Colors.yellow,
        child: Text("Retour"),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const nom_page1(),
          ),
        );
      },
    )

          ]
      ),

    );
  }
}