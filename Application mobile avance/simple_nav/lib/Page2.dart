import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key, required this.word});
  final Text word;
  @override
  State<Page2> createState() => _Page2State();


}
class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: widget.word,
      ),
    );
  }
}