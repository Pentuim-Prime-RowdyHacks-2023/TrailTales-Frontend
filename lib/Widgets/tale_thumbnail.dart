import 'package:flutter/material.dart';
import 'package:trailtales/models/tale_model.dart';
import 'package:trailtales/screens/taleviewscreen.dart';

class TaleThumbnail extends StatelessWidget {
  final TaleModel tale;

  const TaleThumbnail({Key? key, required this.tale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TaleViewScreen(
            ),
          ));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            image: AssetImage('images/default_forest_image.png'),
            fit: BoxFit.fill,
            height: 100,
          ),
        ),
      ),
      // ),
      // ),
    );
  }
}
