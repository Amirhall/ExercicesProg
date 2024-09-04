import 'package:flutter/material.dart';

class ordreAlpha extends StatefulWidget {
  const ordreAlpha({super.key});

  @override
  State<ordreAlpha> createState() => _ordreAlphaState();
}

class _ordreAlphaState extends State<ordreAlpha> {
  List listeNom = ["Faye","Charles","Therese","Dolores","Glenna"];
  @override
  Widget build(BuildContext context) {

    void MoveUp (int index){
      if (index > 0){
        setState(() {
          final item = listeNom[index-1];
          listeNom[index-1] = listeNom[index];
          listeNom[index] = item;
        });
      }
    }
    void MoveDown (int index){
      if (index >= 0){
        setState(() {
          final item = listeNom[index+1];
          listeNom[index+1] = listeNom[index];
          listeNom[index] = item;
        });
      }
    }


    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Color(0xFFFFFFFF),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Ordre alpha'),
        ),
        body: ListView.builder(
            itemCount: listeNom.length,
            itemBuilder: (context,index){
              return Container(
                  height: 50,
                  child:Row(
                    children: [
                      Text(listeNom[index],style: TextStyle(fontSize: 25)),
                      Expanded(child: Container(),),
                      ElevatedButton(onPressed: (){MoveUp(index);}, child: Text("up")),
                      ElevatedButton(onPressed: (){MoveDown(index);}, child: Text("down")),
                    ],
                  )
              );

            })
    );
  }
}
