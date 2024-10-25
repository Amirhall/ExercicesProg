import 'package:flutter/material.dart';
import 'package:imageclient/Differentes%20tailles/differentes_taillesMoitier.dart';
import 'package:imageclient/Differentes%20tailles/differentes_taillesTier.dart';
import 'package:imageclient/Redimensionnement/redimensionnementHighRes.dart';
import 'package:imageclient/Redimensionnement/redimensionnementMidRes.dart';
import 'package:imageclient/grosse_image.dart';
import 'package:imageclient/Redimensionnement/redimensionnementLowRes.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            grosse_image(),
                      ));

                }, child: Text('Grosse image')),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            redimensionnementLowRes(),
                      ));

                }, child: Text('Redimensionnement low res')),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            redimensionnementMidRes(),
                      ));

                }, child: Text('Redimensionnement mid res')),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            redimensionnementHighRes(),
                      ));

                }, child: Text('Redimensionnement high res')),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            differentes_taillesMoitier(),
                      ));

                }, child: Text('differentes tailles (Moitier)')),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            differentes_taillesTier(),
                      ));

                }, child: Text('differentes tailles (Tier)')),
              ],

            ),
          ),
    );
  }
}
