import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

class EtutYoklama extends StatefulWidget {
  final String mail;
  const EtutYoklama({super.key, required this.mail});

  @override
  State<EtutYoklama> createState() => _EtutYoklamaState();
}

class _EtutYoklamaState extends State<EtutYoklama> {
  DateTime? dateTime;
  late String todaysDate;

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
        .doc('etutyoklama')
        .collection("23.12.2022")
        .doc("etutyoklama1")
        .update({
      'alanogretmen': widget.mail,
    });
    FirebaseFirestore.instance
        .collection('yurtapp')
        .doc('etutyoklama2')
        .collection("23.12.2022")
        .doc("etutyoklama1")
        .update({
      'alanogretmen': widget.mail,
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 65, 70, 144),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              addVerticalSpace(size.height / 70),
              Align(
                  alignment: Alignment.center,
                  child: Text("Etüt Yoklaması",
                      style:
                          textThemeDefault.bodyText1!.copyWith(fontSize: 32))),
              addVerticalSpace(size.height / 30),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: ()  {
                    showDatePicker(
                      context:context,
                      initialDate:DateTime.now(),
                      firstDate : DateTime(2020),
                      lastDate : DateTime(2024), 
                    ).then((date){
                      setState(() {
                        dateTime = date!;
                        todaysDate = "${dateTime!.day}.${dateTime!.month}.${dateTime!.year}";
                      });
                    });
                  },
                  child: Container(
                      width: size.width / 2,
                      height: size.height / 15,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 51, 123, 181),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Align(
                              alignment: Alignment.center,
                              child: Text(dateTime == null ? "Takvimi Gör" : dateTime!.day.toString() + "." + dateTime!.month.toString() + "." + dateTime!.year.toString(),
                                  style: textThemeDefault.bodyText1!
                                      .copyWith(fontWeight: FontWeight.w700)))),
                ),
              ),
              addVerticalSpace(size.height / 30),
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
                                  .doc('etutyoklama')
                                  .collection(todaysDate)
                                  .doc("etutyoklama1")
                                  .update({
                                'borasaltik': newBool,
                              });
                            });
                          }),
                      Checkbox(
                          value: checkboxList[1],
                          activeColor: Colors.orange,
                          onChanged: (newBool) {
                            setState(() {
                              checkboxList[1] = newBool!;
                              FirebaseFirestore.instance
                                  .collection('yurtapp')
                                  .doc('etutyoklama')
                                  .collection(todaysDate)
                                  .doc("etutyoklama2")
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
                                  .doc('etutyoklama')
                                  .collection(todaysDate)
                                  .doc("etutyoklama1")
                                  .update({
                                'ahmetozturk': newBool,
                              });
                            });
                          }),
                      Checkbox(
                          value: checkboxList[3],
                          activeColor: Colors.orange,
                          onChanged: (newBool) {
                            setState(() {
                              checkboxList[3] = newBool!;
                              FirebaseFirestore.instance
                                  .collection('yurtapp')
                                  .doc('etutyoklama')
                                  .collection(todaysDate)
                                  .doc("etutyoklama2")
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
                                  .doc('etutyoklama')
                                  .collection(todaysDate)
                                  .doc("etutyoklama1")
                                  .update({
                                'enescankaya': newBool,
                              });
                            });
                          }),
                      Checkbox(
                          value: checkboxList[5],
                          activeColor: Colors.orange,
                          onChanged: (newBool) {
                            setState(() {
                              checkboxList[5] = newBool!;
                              FirebaseFirestore.instance
                                  .collection('yurtapp')
                                  .doc('etutyoklama')
                                  .collection(todaysDate)
                                  .doc("etutyoklama2")
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
                                  .doc('etutyoklama')
                                  .collection(todaysDate)
                                  .doc("etutyoklama1")
                                  .update({
                                'beratsariboga': newBool,
                              });
                            });
                          }),
                      Checkbox(
                          value: checkboxList[7],
                          activeColor: Colors.orange,
                          onChanged: (newBool) {
                            setState(() {
                              checkboxList[7] = newBool!;
                              FirebaseFirestore.instance
                                  .collection('yurtapp')
                                  .doc('etutyoklama')
                                  .collection(todaysDate)
                                  .doc("etutyoklama2")
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
