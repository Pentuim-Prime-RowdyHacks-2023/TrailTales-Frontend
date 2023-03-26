import 'package:flutter/material.dart';
import 'package:trailtales/screens/user_tales.dart';

class MainMenuController extends StatefulWidget {
  const MainMenuController({Key? key}) : super(key: key);

  @override
  State<MainMenuController> createState() => _MainMenuControllerState();
}

class _MainMenuControllerState extends State<MainMenuController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: UserTales(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
    );
  }
}
