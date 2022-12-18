import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';
import 'package:firebase_core/firebase_core.dart';

class YatYoklama extends StatefulWidget {
  final String mail;
  const YatYoklama({super.key, required this.mail});

  @override
  State<YatYoklama> createState() => _YatYoklamaState();
}

class _YatYoklamaState extends State<YatYoklama> {
  List<bool> checkboxList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('yurtapp')
        .doc('yatyoklama')
        .update({
      'alanogretmen': widget.mail,
    });
  }

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
                  child: Text("Yat Yoklaması",
                      style:
                          textThemeDefault.bodyText1!.copyWith(fontSize: 32))),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: size.width / 1.2,
                    height: size.height / 15,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 54, 52, 155),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(60),
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 15.0, right: 10.0),
                          child: Text("Yoklama Alan Öğretmen: ${widget.mail}!",
                              style: textThemeDefault.bodyText1!
                                  .copyWith(fontSize: 17)),
                        ),
                      ],
                    )),
              ),
              addVerticalSpace(size.height / 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Bora S.",
                          style: textThemeDefault.bodyText1!
                              .copyWith(fontSize: 16)),
                      Checkbox(
                          value: checkboxList[0],
                          activeColor: Colors.orange,
                          onChanged: (newBool) {
                            setState(() {
                              checkboxList[0] = newBool!;
                              FirebaseFirestore.instance
                                  .collection('yurtapp')
                                  .doc('yatyoklama')
                                  .update({
                                'borasaltik': newBool,
                              });
                            });
                          }),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Ahmet Ö.",
                          style: textThemeDefault.bodyText1!
                              .copyWith(fontSize: 16)),
                      Checkbox(
                          value: checkboxList[2],
                          activeColor: Colors.orange,
                          onChanged: (newBool) {
                            setState(() {
                              checkboxList[2] = newBool!;
                              FirebaseFirestore.instance
                                  .collection('yurtapp')
                                  .doc('yatyoklama')
                                  .update({
                                'ahmetozturk': newBool,
                              });
                            });
                          }),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Enes Ç.",
                          style: textThemeDefault.bodyText1!
                              .copyWith(fontSize: 16)),
                      Checkbox(
                          value: checkboxList[4],
                          activeColor: Colors.orange,
                          onChanged: (newBool) {
                            setState(() {
                              checkboxList[4] = newBool!;
                              FirebaseFirestore.instance
                                  .collection('yurtapp')
                                  .doc('yatyoklama')
                                  .update({
                                'enescankaya': newBool,
                              });
                            });
                          }),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Berat S.",
                          style: textThemeDefault.bodyText1!
                              .copyWith(fontSize: 16)),
                      Checkbox(
                          value: checkboxList[6],
                          activeColor: Colors.orange,
                          onChanged: (newBool) {
                            setState(() {
                              checkboxList[6] = newBool!;
                              FirebaseFirestore.instance
                                  .collection('yurtapp')
                                  .doc('yatyoklama')
                                  .update({
                                'beratsariboga': newBool,
                              });
                            });
                          }),
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
