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
  DateTime? dateTime;
  late String todaysDate;
  List<String> dateList = ["", "", "", "", "", "", "", ""];

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
                            child: Text(
                                "Yoklama Alan Öğretmen: ${widget.mail}!",
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
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2024),
                                ).then((date) {
                                  setState(() {
                                    dateTime = date!;
                                    todaysDate =
                                        "${dateTime!.day}.${dateTime!.month}.${dateTime!.year}";
                                    FirebaseFirestore.instance
                                        .collection('yurtapp')
                                        .doc('evciizin')
                                        .collection("borasaltik")
                                        .doc("borasaltik")
                                        .update({
                                      'gidecek': todaysDate,
                                    });
                                  });
                                });
                              },
                              child: Container(
                                  width: size.width / 2.7,
                                  height: size.height / 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Gideceği Gün",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(
                                                  color: colorWhite,
                                                  fontSize: 16)))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2024),
                                ).then((date) {
                                  setState(() {
                                    dateTime = date!;
                                    todaysDate =
                                        "${dateTime!.day}.${dateTime!.month}.${dateTime!.year}";
                                    FirebaseFirestore.instance
                                        .collection('yurtapp')
                                        .doc('evciizin')
                                        .collection("borasaltik")
                                        .doc("borasaltik")
                                        .update({
                                      'gelecek': todaysDate,
                                    });
                                  });
                                });
                              },
                              child: Container(
                                  width: size.width / 2.7,
                                  height: size.height / 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Geleceği Gün",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(
                                                  color: colorWhite,
                                                  fontSize: 16)))),
                            ),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2024),
                                ).then((date) {
                                  setState(() {
                                    dateTime = date!;
                                    todaysDate =
                                        "${dateTime!.day}.${dateTime!.month}.${dateTime!.year}";
                                    FirebaseFirestore.instance
                                        .collection('yurtapp')
                                        .doc('evciizin')
                                        .collection("ahmetozturk")
                                        .doc("ahmetozturk")
                                        .update({
                                      'gidecek': todaysDate,
                                    });
                                  });
                                });
                              },
                              child: Container(
                                  width: size.width / 2.7,
                                  height: size.height / 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Gideceği Gün",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(
                                                  color: colorWhite,
                                                  fontSize: 16)))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2024),
                                ).then((date) {
                                  setState(() {
                                    dateTime = date!;
                                    todaysDate =
                                        "${dateTime!.day}.${dateTime!.month}.${dateTime!.year}";
                                    FirebaseFirestore.instance
                                        .collection('yurtapp')
                                        .doc('evciizin')
                                        .collection("ahmetozturk")
                                        .doc("ahmetozturk")
                                        .update({
                                      'gelecek': todaysDate,
                                    });
                                  });
                                });
                              },
                              child: Container(
                                  width: size.width / 2.7,
                                  height: size.height / 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Geleceği Gün",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(
                                                  color: colorWhite,
                                                  fontSize: 16)))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                addVerticalSpace(size.height / 20),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2024),
                                ).then((date) {
                                  setState(() {
                                    dateTime = date!;
                                    todaysDate =
                                        "${dateTime!.day}.${dateTime!.month}.${dateTime!.year}";
                                    FirebaseFirestore.instance
                                        .collection('yurtapp')
                                        .doc('evciizin')
                                        .collection("enescankaya")
                                        .doc("enescankaya")
                                        .update({
                                      'gidecek': todaysDate,
                                    });
                                  });
                                });
                              },
                              child: Container(
                                  width: size.width / 2.7,
                                  height: size.height / 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Gideceği Gün",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(
                                                  color: colorWhite,
                                                  fontSize: 16)))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2024),
                                ).then((date) {
                                  setState(() {
                                    dateTime = date!;
                                    todaysDate =
                                        "${dateTime!.day}.${dateTime!.month}.${dateTime!.year}";
                                    FirebaseFirestore.instance
                                        .collection('yurtapp')
                                        .doc('evciizin')
                                        .collection("enescankaya")
                                        .doc("enescankaya")
                                        .update({
                                      'gelecek': todaysDate,
                                    });
                                  });
                                });
                              },
                              child: Container(
                                  width: size.width / 2.7,
                                  height: size.height / 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Geleceği Gün",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(
                                                  color: colorWhite,
                                                  fontSize: 16)))),
                            ),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2024),
                                ).then((date) {
                                  setState(() {
                                    dateTime = date!;
                                    todaysDate =
                                        "${dateTime!.day}.${dateTime!.month}.${dateTime!.year}";
                                    FirebaseFirestore.instance
                                        .collection('yurtapp')
                                        .doc('evciizin')
                                        .collection("beratsariboga")
                                        .doc("beratsariboga")
                                        .update({
                                      'gidecek': todaysDate,
                                    });
                                  });
                                });
                              },
                              child: Container(
                                  width: size.width / 2.7,
                                  height: size.height / 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Gideceği Gün",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(
                                                  color: colorWhite,
                                                  fontSize: 16)))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2024),
                                ).then((date) {
                                  setState(() {
                                    dateTime = date!;
                                    todaysDate =
                                        "${dateTime!.day}.${dateTime!.month}.${dateTime!.year}";
                                    FirebaseFirestore.instance
                                        .collection('yurtapp')
                                        .doc('evciizin')
                                        .collection("beratsariboga")
                                        .doc("beratsariboga")
                                        .update({
                                      'gelecek': todaysDate,
                                    });
                                  });
                                });
                              },
                              child: Container(
                                  width: size.width / 2.7,
                                  height: size.height / 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text("Geleceği Gün",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(
                                                  color: colorWhite,
                                                  fontSize: 16)))),
                            ),
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
