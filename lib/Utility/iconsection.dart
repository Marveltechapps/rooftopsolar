import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget svgImageWithText(String imagePath, String text) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SvgPicture.asset(
        imagePath,
        width: 50, // Set your width
        height: 50, // and height accordingly
        // placeholderBuilder: (BuildContext context) => Container(
        //     padding: const EdgeInsets.all(30.0),
        //     child: const CircularProgressIndicator()),
      ),
      Text(text, style: TextStyle(color: Colors.white)),
    ],
  );
}

Widget ImageWithText(String imagePaths, String text) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Image.asset(
        imagePaths,
        width: 50, // Set your width
        height: 50, // and height accordingly
        // placeholderBuilder: (BuildContext context) => Container(
        //     padding: const EdgeInsets.all(30.0),
        //     child: const CircularProgressIndicator()),
      ),
      Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
