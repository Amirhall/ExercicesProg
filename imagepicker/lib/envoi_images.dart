import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imagepicker/main.dart';
class envoie_images extends StatefulWidget {
  const envoie_images({super.key});
  @override
  State<envoie_images> createState() => _envoie_imagesState();
}

class _envoie_imagesState extends State<envoie_images> {
  String imagePath = "";
  XFile? pickedImage;
  String ImageURL = "";

  void getImage() async{
    ImagePicker picker = ImagePicker();
    pickedImage = await picker.pickImage(source: ImageSource.gallery);
    imagePath = pickedImage!.path;
    sendImage();
  }

  void sendImage() async{
    FormData formData = FormData.fromMap({"file": await MultipartFile.fromFile(imagePath, filename: pickedImage!.name)});
    Dio dio = Dio();
    var response = await dio.post("http://10.0.2.2:8080/singleFile", data:formData);
    String id = response.data as String;
    ImageURL = "http://10.0.2.2:8080/singleFile" + id;
    setState(() {});

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(child:
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(ImageURL).image,
                // if(imagePath == "") { Image.asset(imagePath).image } else {Image.asset(imagePath).image}
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Row(
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
                    }, child: Text("Envoyer une image")),
              ],
            ),
        ),
        )

    );
  }
}