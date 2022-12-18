import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

class OdaPage extends StatelessWidget {
  const OdaPage({super.key});

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
                    child: Text("Oda Bilgisi",
                        style: textThemeDefault.bodyText1!
                            .copyWith(fontSize: 32))),
                addVerticalSpace(size.height / 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          showAlertDialog(context);
                        },
                        child: Container(
                            width: size.width / 2.2,
                            height: size.height / 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: const Color.fromARGB(255, 27, 15, 86)),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text("101",
                                    style: TextStyle(
                                        color: colorWhite,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700)))),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: size.width / 2.2,
                            height: size.height / 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: const Color.fromARGB(255, 27, 15, 86)),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text("102",
                                    style: TextStyle(
                                        color: colorWhite,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700)))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Align(alignment:Alignment.center,child: Text("ODA 101")),
    content: Text("Bora Saltık, Ahmet Öztürk, Enes Tunahan Çankaya, Berat Sarıboğa",style:TextStyle(fontSize:16)),
    actions: [
      TextButton(
        child: Text("Kapat",style:TextStyle(fontSize:16,color:Colors.redAccent)),
        onPressed: () {Navigator.pop(context);},
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
