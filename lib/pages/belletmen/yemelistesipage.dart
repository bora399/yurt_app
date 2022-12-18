import 'package:flutter/material.dart';

class YemekPage extends StatelessWidget {
  const YemekPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child:Scaffold(
        backgroundColor:const Color.fromARGB(255, 65, 70, 144),
        body:Image.asset("assets/image1.jpeg",height:size.height)
      ),
    );
  }
}