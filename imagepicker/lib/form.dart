import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imagepicker/main.dart';
class form extends StatefulWidget {
  const form({super.key});
  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  String imagePath = "";
  void getImage() async{
    ImagePicker picker = ImagePicker();
    XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
    imagePath = pickedImage!.path;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.file(File(imagePath)).image,
            // if(imagePath == "") { Image.asset(imagePath).image } else {Image.asset(imagePath).image}
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Prénom"),
            TextField(),
            Text("Nom"),
            TextField(),
            Text("Mot de passe"),
            TextField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyApp(),
                        ),
                      );
                    }, child: Text("Retour menu")),
                ElevatedButton(
                    onPressed: () {
                      getImage();
                      setState(() {});
                    }, child: Text("Changer background")),
              ],
            )
          ],
        ),
      )

    );
  }
}