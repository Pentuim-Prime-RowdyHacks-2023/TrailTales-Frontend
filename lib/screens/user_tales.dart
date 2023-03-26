import 'package:flutter/material.dart';
import 'package:trailtales/Widgets/tale_thumbnail.dart';

class UserTales extends StatefulWidget {
  const UserTales({Key? key}) : super(key: key);

  @override
  State<UserTales> createState() => _UserTalesState();
}

class _UserTalesState extends State<UserTales> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TaleThumbnail(),
      );
    });
  }
}
