import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trailtales/blocs/api_cubit.dart';
import 'package:trailtales/main_menu_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => APICubit()..loadTales(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: const MainMenuController(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

