import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:formatif2013/listeJson.dart';
class nom_web_service extends StatefulWidget {
  const nom_web_service({super.key});
  @override
  State<nom_web_service> createState() => _nom_web_serviceState();
}


class _nom_web_serviceState extends State<nom_web_service> {
  List<Chanson> liste = [];
  final titleController = TextEditingController();
  Future<List<Chanson>> rechercherChanson(String titre) async {
    try {
      Dio dio = new Dio();
      var response = await dio.get('https://examen-intra-a23.azurewebsites.net/exam/artiste/recherche/'+titre);
      var listeJSON = response.data as List;
      liste = listeJSON.map((element){
        return Chanson.fromJson(element);
      }).toList();
      setState(() {});
      return liste;

    }
    catch (e) {
      print(e); //type 'Null' is not a subtype of type 'String' in type cast
      throw (e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Recherche d\'artiste'),
        ),
        body:
        Container(
          child: Column(
            children: [
              Text("Recherche"),
              TextField(
                decoration: InputDecoration(
                  labelText: "Titre",
                ),
                controller: titleController,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: liste.length,
                  itemBuilder: (context, index)  {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title:Text(liste[index].titre)
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         rechercherChanson(titleController.text);


        },
        child: const Icon(Icons.loupe),
      ),

    );
  }
}