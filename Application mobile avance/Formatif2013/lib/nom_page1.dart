import 'dart:io';

import 'package:flutter/material.dart';
import 'package:formatif2013/main.dart';
import 'package:formatif2013/nom_page2.dart';
import 'package:formatif2013/nom_page3.dart';
class nom_page1 extends StatefulWidget {
  const nom_page1({super.key});
  @override
  State<nom_page1> createState() => _nom_page1State();
}

class _nom_page1State extends State<nom_page1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Am'),
        ),
      drawer: DrawerWidget(),
        body: Column(
          children: [
            Expanded(
                flex: 6,
                child: Container(
              color: Colors.blue,
            )),
            Expanded(
                flex: 1,
                child: Container(
              color: Colors.green,
            )),
            SizedBox(
              width: 222,
              height: 222,
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
              color: Colors.red,
            )),
            Expanded(
                flex: 4,
                child: Container(
              color: Colors.deepOrange,
            )),

          ],
        )
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(child: Text("Amir 2284873")),
          ListTile(
            title: Text.rich(
              TextSpan(
                  children: [
                    WidgetSpan(child: Icon(Icons.ac_unit)),
                    TextSpan(text: ' Am')
                  ]),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const nom_page1(),
                ),
              );
            },
          ),
          ListTile(
            title: Text.rich(
              TextSpan(
                  children: [
                    WidgetSpan(child: Icon(Icons.ac_unit)),
                    TextSpan(text: "Stram")
                  ]),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const nom_page2(),
                ),
              );
            },
          ),
          ListTile(
            title: Text.rich(
              TextSpan(
                  children: [
                    WidgetSpan(child: Icon(Icons.ac_unit)),
                    TextSpan(text: ' Gram')
                  ]),
            ),
            onTap: ()  {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const nom_page3(), ), );
            },
          ),
          ListTile(
            title: Text.rich(
              TextSpan(
                  children: [
                    WidgetSpan(child: Icon(Icons.ac_unit)),
                    TextSpan(text: ' Accueil')
                  ]),
            ),
            onTap: ()  {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp(), ), );
            },
          ),
        ],
      ),
    );
  }
}