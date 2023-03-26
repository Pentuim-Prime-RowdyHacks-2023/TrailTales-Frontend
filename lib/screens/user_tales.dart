import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trailtales/Widgets/tale_thumbnail.dart';
import 'package:trailtales/blocs/api_cubit.dart';

class UserTales extends StatefulWidget {
  const UserTales({Key? key}) : super(key: key);

  @override
  State<UserTales> createState() => _UserTalesState();
}

class _UserTalesState extends State<UserTales> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<APICubit, APIState>(
        builder: (context, currState) {

          if (currState is TalesErrorState) {
            return Center(child: Text("Error: ${currState.message}"));
          }

          if (currState is TalesLoadingState) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                alignment: Alignment.center,
                child: const Center(
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
        return ListView.builder(
            itemCount: currState.tales.length,
            itemBuilder: (context, index) {

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TaleThumbnail(tale: currState.tales[index.toString()]!,),
          );
        });
      }
    );
  }
}
