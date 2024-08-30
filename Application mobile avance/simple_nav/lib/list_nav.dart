import 'package:flutter/material.dart';

class Activite2 extends StatefulWidget {
  const Activite2({super.key});
  @override
  State<Activite2> createState() => _Activite2State();
}

class Truc {
  final String name;
  final int id;

  Truc({required this.name, required this.id});

  @override
  String toString() {
    return '{ $name, $id }';
  }
}

class _Activite2State extends State<Activite2> {
  @override
  Widget build(BuildContext context) {
    Truc truc1 = Truc(name: "rouge", id: 1);
    Truc truc2 = Truc(name: "vert", id: 2);
    Truc truc3 = Truc(name: "rose", id: 3);
    Truc truc4 = Truc(name: "bleu", id: 4);
    Truc truc5 = Truc(name: "jaune", id: 5);

    List<Truc> list = [truc1, truc2, truc3, truc4, truc5];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Activite 2'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          Truc truc = list[index];
          return ListTile(
            title: Text(truc.name),
            subtitle: Text('ID: ${truc.id}'), //????????
          );
        },
      ),
    );
  }
}
