import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/pages/firstpage.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(const OrganizationApp());
}

class OrganizationApp extends StatefulWidget {
  const OrganizationApp({super.key});

  @override
  State<OrganizationApp> createState() => _OrganizationAppState();
}

  
class _OrganizationAppState extends State<OrganizationApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:  false,
      title:"Dijital Pansiyon",
      home:FirstPage(),
    );
  }
}