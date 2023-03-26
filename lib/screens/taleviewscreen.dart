import 'package:flutter/material.dart';

class TaleViewScreen extends StatefulWidget {
  const TaleViewScreen({Key? key}) : super(key: key);

  @override
  State<TaleViewScreen> createState() => _TaleViewScreenState();
}

class _TaleViewScreenState extends State<TaleViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Title"),
          ),
          Row(),
        ],
      ),
    );
  }
}
