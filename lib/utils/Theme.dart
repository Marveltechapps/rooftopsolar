import 'package:flutter/material.dart';

// final dark_blue = Color(0xFF001E36);

ThemeData darkTheme = ThemeData.dark().copyWith(
  // scaffoldBackgroundColor: dark_blue,
  primaryColor: Colors.white,
  hintColor: const Color(0xFF31A8FF),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontFamily: "InknutAntiqua",
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontFamily: "Kablammo",
      fontSize: 15.0,
      color: Colors.black,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    centerTitle: true,
    elevation: 0,
  ),
  iconTheme: const IconThemeData(
    color: Color(0xFF31A8FF),
  ),
);

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: const Color(0xfff5f5f5),
  hintColor: const Color(0xff40bf7a),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontFamily: "Kablammo",
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontFamily: "Kablammo",
      fontSize: 15.0,
      color: Colors.black,
    ),
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF001E36),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20.0,
      )),
  iconTheme: const IconThemeData(
    color: Color(0xFF76D7EA),
  ),
);

ThemeData customDefaultTheme = ThemeData(
  fontFamily: 'Lato',
  // scaffoldBackgroundColor: Color(0xFF27374D),
  primaryColor: Colors.white,
  hintColor: const Color(0xFFBDD1F8),
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      // backgroundColor: Colors.white10,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold)),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        // color: Color(0xFFBDD1F8),
        color: Colors.black),
    titleMedium: TextStyle(
      fontSize: 15.0,
      color: Colors.green, //Content
    ),
    displayLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        // color: Color(0xFFBDD1F8),
        color: Colors.black
        //larger display
        ),
    displayMedium: TextStyle(
        fontSize: 10.0,
        // color: Color(0xFFBDD1F8), //inside the text field
        color: Colors.black),
    displaySmall: TextStyle(fontSize: 18.0, color: Colors.black),
    titleSmall: TextStyle(
      fontSize: 12.0,
      color: Colors.white, // small text
    ),
  ),

  // iconTheme: IconThemeData(
  //   color: Colors.white, // Customize this color for the custom theme
  //   // size: 70.0,
  // ),
  inputDecorationTheme: const InputDecorationTheme(
    // enabledBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: Colors.black, width: 2),
    // ),
    // focusedBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: Colors.black, width: 2),
    // ),
    // border: OutlineInputBorder(
    //   borderSide: BorderSide(color: Colors.black, width: 2),
    // ),
    hintStyle: TextStyle(color: Colors.black),
  ),
  // Add IconButtonTheme
  // iconButtonTheme: IconButtonThemeData(
  //   color: Color(0xFF31A8FF), // Customize this color for icon buttons
  //   // size: 70.0, // You can set the size if needed
  // ),

  iconTheme: const IconThemeData(
    color: Colors.grey,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      // side: BorderSide(color: Color(0xFF0F5EF7)),
      fixedSize: const Size(200, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
  ),
);
