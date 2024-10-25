import 'package:flutter/material.dart';

class grosse_image extends StatefulWidget {
  const grosse_image({super.key});

  @override
  State<grosse_image> createState() => _grosse_imageState();
}

class _grosse_imageState extends State<grosse_image> {
  @override
  Widget build(BuildContext context) {

    Image image = Image.network("https://fourn6-mobile-prof.onrender.com/exos/image");

    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          backgroundColor: Color(0xFFFFFFFF),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Grosse Image'),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index){
              return image;

            })
    );
  }
}