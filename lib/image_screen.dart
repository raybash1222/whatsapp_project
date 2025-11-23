import 'package:flutter/material.dart';
import 'package:whatsapppro/login/login.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  void initState(){
    super.initState();

    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Image.asset(
          "assets/images/png/Whatsapp-Logo-PNG-Images.png"
        ),
      ),
    );
  }
}
