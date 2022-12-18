import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';
import 'package:yurt_app/widgets/containerwidget.dart';

class UlasPage extends StatelessWidget {
  const UlasPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 65, 70, 144),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                addVerticalSpace(size.height / 70),
                Align(
                    alignment: Alignment.center,
                    child: Text("Öğrenciye Ulaş",
                        style: textThemeDefault.bodyText1!
                            .copyWith(fontSize: 32))),
                addVerticalSpace(size.height / 30),
                ContainerWidget(name:"Bora Saltık",adress:"Tekirdağ/Saray",number:"01111111111"),
                ContainerWidget(name:"Ahmet Öztürk",adress:"Tekirdağ/Saray",number:"01111111111"),
                ContainerWidget(name:"Enes Çankaya",adress:"Tekirdağ/Saray",number:"01111111111"),
                ContainerWidget(name:"Berat Sarıboğa",adress:"Tekirdağ/Saray",number:"01111111111"),
              ],
            ),
          )),
    );
  }
}