import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

class EtutYoklama extends StatefulWidget {
  const EtutYoklama({super.key});

  @override
  State<EtutYoklama> createState() => _EtutYoklamaState();
}

class _EtutYoklamaState extends State<EtutYoklama> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child:Scaffold(
        backgroundColor:const Color.fromARGB(255, 65, 70, 144),
        body:Padding(
          padding:const EdgeInsets.all(8.0),
          child:Column(
            children: [
              addVerticalSpace(size.height/70),
              Align(alignment:Alignment.center,child:Text("Etüt Yoklaması",style:textThemeDefault.bodyText1!.copyWith(fontSize:32))),
              addVerticalSpace(size.height/25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("isimler",style:textThemeDefault.bodyText1!.copyWith(fontSize:18)),
                      const Text("Bora Saltık"),
                      const Text("Ahmet Öztürk"),
                      const Text("Enes Çankaya"),
                      const Text("Berat Sarıboğa"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("1.Etüt",style:textThemeDefault.bodyText1!.copyWith(fontSize:18)),
                      const Text("checkbox"),
                      const Text("checkbox"),
                      const Text("checkbox"),
                      const Text("checkbox"),

                    ],
                  ),
                  Column(
                    children: [
                      Text("2.Etüt",style:textThemeDefault.bodyText1!.copyWith(fontSize:18)),
                      const Text("checkbox"),
                      const Text("checkbox"),
                      const Text("checkbox"),
                      const Text("checkbox"),
                    ],
                  ),
                ],
              ),
              
            
            ],
          ),
        ),
      ),
    );
  }
}