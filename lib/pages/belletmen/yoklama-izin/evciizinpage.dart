import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

class EvciIzin extends StatefulWidget {
  final String mail;
  const EvciIzin({super.key, required this.mail});

  @override
  State<EvciIzin> createState() => _EvciIzinState();
}

class _EvciIzinState extends State<EvciIzin> {
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance.collection('yurtapp').doc('evciizin').update({
      'alanogretmen': widget.mail,
    });
  }

  String? dropdownValue;
  String? dropdownValue2;
  String? dropdownValue3;
  String? dropdownValue4;
  String? dropdownValue5;
  String? dropdownValue6;
  String? dropdownValue7;
  String? dropdownValue8;


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
                    child: Text("Evci İzin",
                        style: textThemeDefault.bodyText1!
                            .copyWith(fontSize: 32))),
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
                addVerticalSpace(size.height / 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text("Bora S.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700))),
                        Align(
                          alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            hint: const Text("Gideceği Gün",
                                style: TextStyle(color: colorBlack)),
                            items: <String>['Cuma', 'Cumartesi', 'Pazar']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style:
                                      const TextStyle(fontSize: 18, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                                FirebaseFirestore.instance
                                    .collection('yurtapp')
                                    .doc('evciizin')
                                    .collection("borasaltik")
                                    .doc("borasaltik")
                                    .update({
                                  'gelecek': dropdownValue,
                                });
                              });
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue2,
                            hint: const Text("Geleceği Gün",
                                style: TextStyle(color: colorBlack)),
                            items: <String>['Cuma', 'Cumartesi', 'Pazar']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style:
                                      const TextStyle(fontSize: 18, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue2 = newValue!;
                                FirebaseFirestore.instance
                                    .collection('yurtapp')
                                    .doc('evciizin')
                                    .collection("borasaltik")
                                    .doc("borasaltik")
                                    .update({
                                  'gidecek': dropdownValue2,
                                });
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text("Ahmet Ö.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700))),
                        Align(
                          alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue3,
                            hint: const Text("Gideceği Gün",
                                style: TextStyle(color: colorBlack)),
                            items: <String>['Cuma', 'Cumartesi', 'Pazar']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style:
                                      const TextStyle(fontSize: 18, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue3 = newValue!;
                                FirebaseFirestore.instance
                                    .collection('yurtapp')
                                    .doc('evciizin')
                                    .collection("ahmetozturk")
                                    .doc("ahmetozturk")
                                    .update({
                                  'gelecek': dropdownValue3,
                                });
                              });
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue4,
                            hint: const Text("Geleceği Gün",
                                style: TextStyle(color: colorBlack)),
                            items: <String>['Cuma', 'Cumartesi', 'Pazar']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style:
                                      const TextStyle(fontSize: 18, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue4 = newValue!;
                                FirebaseFirestore.instance
                                    .collection('yurtapp')
                                    .doc('evciizin')
                                    .collection("ahmetozturk")
                                    .doc("ahmetozturk")
                                    .update({
                                  'gidecek': dropdownValue4,
                                });
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                addVerticalSpace(size.height/20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text("Enes Ç.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700))),
                        Align(
                          alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue5,
                            hint: const Text("Gideceği Gün",
                                style: TextStyle(color: colorBlack)),
                            items: <String>['Cuma', 'Cumartesi', 'Pazar']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style:
                                      const TextStyle(fontSize: 18, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue5 = newValue!;
                                FirebaseFirestore.instance
                                    .collection('yurtapp')
                                    .doc('evciizin')
                                    .collection("enescankaya")
                                    .doc("enescankaya")
                                    .update({
                                  'gelecek': dropdownValue5,
                                });
                              });
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue6,
                            hint: const Text("Geleceği Gün",
                                style: TextStyle(color: colorBlack)),
                            items: <String>['Cuma', 'Cumartesi', 'Pazar']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style:
                                      const TextStyle(fontSize: 18, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue6 = newValue!;
                                FirebaseFirestore.instance
                                    .collection('yurtapp')
                                    .doc('evciizin')
                                    .collection("enescankaya")
                                    .doc("enescankaya")
                                    .update({
                                  'gidecek': dropdownValue6,
                                });
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text("Berat Sarıboğa",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700))),
                        Align(
                          alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue7,
                            hint: const Text("Gideceği Gün",
                                style: TextStyle(color: colorBlack)),
                            items: <String>['Cuma', 'Cumartesi', 'Pazar']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style:
                                      const TextStyle(fontSize: 18, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue7 = newValue!;
                                FirebaseFirestore.instance
                                    .collection('yurtapp')
                                    .doc('evciizin')
                                    .collection("beratsariboga")
                                    .doc("beratsariboga")
                                    .update({
                                  'gelecek': dropdownValue7,
                                });
                              });
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue8,
                            hint: const Text("Geleceği Gün",
                                style: TextStyle(color: colorBlack)),
                            items: <String>['Cuma', 'Cumartesi', 'Pazar']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style:
                                      const TextStyle(fontSize: 18, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue8 = newValue!;
                                FirebaseFirestore.instance
                                    .collection('yurtapp')
                                    .doc('evciizin')
                                    .collection("beratsariboga")
                                    .doc("beratsariboga")
                                    .update({
                                  'gidecek': dropdownValue8,
                                });
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
