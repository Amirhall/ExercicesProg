import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intra2022/representationNombre.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<RepresentationNombre> liste = [];


  @override
  Widget build(BuildContext context) {
    // RepresentationNombre ex1 = new RepresentationNombre();
    // ex1.representation = "asdas";
    // ex1.description = "sadas";
    // ex1.nombre = 2;
    // liste.add(ex1);
    final nombreController = TextEditingController();

    Future<List<RepresentationNombre>> chercheRepresentation(String nombre) async {
      try {
        Dio dio = new Dio();
        var response = await dio.get('https://fourn6-mobile-prof.onrender.com/exam/representations/'+nombre);
        var listeJSON = response.data as List;
        liste = listeJSON.map((element){
          return RepresentationNombre.fromJson(element);
        }).toList();
        setState(() {});
        return liste;

      }
      catch (e) {
        print(e); //type 'Null' is not a subtype of type 'String' in type cast
        throw (e);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Web"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            TextField(controller: nombreController,),
            TextButton(
                onPressed: (){chercheRepresentation(nombreController.text);},
                child:Text("Va chercher les représentations")),
            Expanded(
              child: ListView.builder(
                itemCount: liste.length,
                itemBuilder: (context, index)  {
                  return Container(
                    decoration: BoxDecoration(
                    ),
                    child: ListTile(
                      leading: Text(liste[index].nombre.toString()),
                      title: Text(liste[index].description),
                      subtitle: Text(liste[index].representation),


                    ),
                  );
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}
