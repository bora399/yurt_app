import 'package:flutter/material.dart';
import 'package:yurt_app/pages/firstpage.dart';
import 'package:yurt_app/pages/loginpage.dart';

void main() {
  runApp(const OrganizationApp());
}

class OrganizationApp extends StatelessWidget {
  const OrganizationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Dijital Pansiyon",
      home:FirstPage(),
    );
  }
}