import 'package:flutter/material.dart';
import 'package:whatsapppro/first_screen.dart';
import 'package:whatsapppro/image_screen.dart';
import 'package:whatsapppro/screens/first_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ImageScreen(),
    );
  }
}

