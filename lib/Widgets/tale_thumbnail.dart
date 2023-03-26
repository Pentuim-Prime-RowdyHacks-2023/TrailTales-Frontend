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
              builder: (context) => TaleViewScreen(),
            ));
          },
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    child: Image(
                      image: AssetImage('images/default_forest_image.png'),
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                    "Title",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        )
        // ),
        // ),
        );
  }
}
//
// ClipRRect(
// borderRadius: BorderRadius.circular(10.0),
// child: Image(
// image: AssetImage('images/default_forest_image.png'),
// fit: BoxFit.fill,
// height: 100,
// ),
// ),

// Text(
// 'Show text here',
// style: TextStyle(
// color: Colors.pink,
// fontWeight: FontWeight.bold,
// fontSize: 22.0),
// ),