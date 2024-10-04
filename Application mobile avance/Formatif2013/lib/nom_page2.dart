import 'dart:io';

import 'package:flutter/material.dart';

import 'nom_page1.dart';
class nom_page2 extends StatefulWidget {
  const nom_page2({super.key});
  @override
  State<nom_page2> createState() => _nom_page2State();
}

class _nom_page2State extends State<nom_page2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stram'),
      ),
      drawer: DrawerWidget(),
      body:  Container(),
      floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: const Icon(Icons.arrow_right_alt),
    ),
    );
  }
}