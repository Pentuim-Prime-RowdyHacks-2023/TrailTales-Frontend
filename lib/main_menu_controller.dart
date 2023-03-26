import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trailtales/blocs/api_cubit.dart';
import 'package:trailtales/screens/user_tales.dart';
import 'package:file_picker/file_picker.dart';

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
      body: BlocBuilder<APICubit, APIState>(
        builder: (context, currState) {

          if (currState is TalesErrorState) {
            return Center(child: Text("Error: ${currState.message}"));
          }

          if (currState is TalesLoadingState) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                alignment: Alignment.center,
                child: Center(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      strokeWidth: 1.5,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            );
          }

          return UserTales();
        }
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles(
              type: FileType.audio,
            );

            if (result != null) {
              // File file = File(result.files.single.path!);
              // print(result.files.single.path);
            } else {
              // User canceled the picker
            }
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
    );
  }
}
