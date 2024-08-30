import 'package:flutter/material.dart';
import 'package:simple_nav/list_nav.dart';

class list_nav extends StatefulWidget {
  const list_nav({super.key, required this.truc});
  final Truc truc;
  @override
  State<list_nav> createState() => listItem();


}
class listItem extends State<list_nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list_nav'),
      ),
      body: Column(
        children: [
        ],
      ),
    );
  }
}