import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

import '../../utils/constants.dart';

class ShowEtutYoklama extends StatefulWidget {
  const ShowEtutYoklama({super.key});

  @override
  State<ShowEtutYoklama> createState() => ShowEtutYoklamaState();
}

class ShowEtutYoklamaState extends State<ShowEtutYoklama> {
  var yurtapp = FirebaseFirestore.instance
      .collection('yurtapp')
      .doc("etutyoklama")
      .collection("23.12.2022")
      .doc("etutyoklama1")
      .get();
  var yurtapp2 = FirebaseFirestore.instance
      .collection('yurtapp')
      .doc("etutyoklama")
      .collection("23.12.2022")
      .doc("etutyoklama2")
      .get();

  DateTime? dateTime;
  late String todaysDate;
  bool boolValue = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 30, 32, 64),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
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
                        boolValue = true;
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
                          child: Text(
                              dateTime == null
                                  ? "Takvimi Gör"
                                  : dateTime!.day.toString() +
                                      "." +
                                      dateTime!.month.toString() +
                                      "." +
                                      dateTime!.year.toString(),
                              style: textThemeDefault.bodyText1!
                                  .copyWith(fontWeight: FontWeight.w700)))),
                ),
              ),
            ),
            addVerticalSpace(size.height / 60),
            InkWell(
              onTap: () {
                showEtut1(context);
              },
              child: Container(
                  width: size.width / 2.5,
                  height: size.height / 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color.fromARGB(255, 65, 105, 181)),
                  child: Center(
                      child: Text("1.Etüt Yoklaması",
                          style: TextStyle(color: Colors.white)))),
            ),
            addVerticalSpace(8),
            InkWell(
              onTap: () {
                showEtut2(context);
              },
              child: Container(
                  width: size.width / 2.5,
                  height: size.height / 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color.fromARGB(255, 65, 105, 181)),
                  child: Center(
                      child: Text("2.Etüt Yoklaması",
                          style: TextStyle(color: Colors.white)))),
            ),
          ],
        ),
      ),
    );
  }
}

showEtut1(BuildContext context) {
  Future<DocumentSnapshot<Map<String, dynamic>>> yurtapp = FirebaseFirestore
      .instance
      .collection('yurtapp')
      .doc("etutyoklama")
      .collection("23.12.2022")
      .doc("etutyoklama1")
      .get();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return FutureBuilder<DocumentSnapshot>(
          future: yurtapp,
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              print("error var");
            }
            if (snapshot.hasData && !snapshot.data!.exists) {
              print("data yok");
            }
            if (snapshot.connectionState == ConnectionState.done) {
              Map data = snapshot.data!.data() as Map;
              return AlertDialog(
                title: const Align(
                    alignment: Alignment.center, child: Text("Etüt Yoklama 1")),
                content: Column(
                  children: [
                    Text(
                        "Bora Saltık : ${data["borasaltik"] == true ? "Var" : "Yok"}"
                        "",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    Text(
                        "Enes Çankaya : ${data["enescankaya"] == true ? "Var" : "Yok"}"
                        "",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    Text(
                        "Ahmet Öztürk : ${data["ahmetozturk"] == true ? "Var" : "Yok"}"
                        "",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    Text(
                        "Berat Sarıboğa : ${data["beratsariboga"] == true ? "Var" : "Yok"}"
                        "",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ],
                ),
                actions: [
                  TextButton(
                    child: const Text("Kapat",
                        style: TextStyle(fontSize: 16, color: Colors.red)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            }
            return Text("loading");
          });
    },
  );
}

showEtut2(BuildContext context) {
  Future<DocumentSnapshot<Map<String, dynamic>>> yurtapp = FirebaseFirestore
      .instance
      .collection('yurtapp')
      .doc("etutyoklama")
      .collection("23.12.2022")
      .doc("etutyoklama2")
      .get();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return FutureBuilder<DocumentSnapshot>(
          future: yurtapp,
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              print("error var");
            }
            if (snapshot.hasData && !snapshot.data!.exists) {
              print("data yok");
            }
            if (snapshot.connectionState == ConnectionState.done) {
              Map data = snapshot.data!.data() as Map;
              return AlertDialog(
                title: const Align(
                    alignment: Alignment.center, child: Text("Etüt Yoklama 2")),
                content: Column(
                  children: [
                    Text(
                        "Bora Saltık : ${data["borasaltik"] == true ? "Var" : "Yok"}"
                        "",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    Text(
                        "Enes Çankaya : ${data["enescankaya"] == true ? "Var" : "Yok"}"
                        "",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    Text(
                        "Ahmet Öztürk : ${data["ahmetozturk"] == true ? "Var" : "Yok"}"
                        "",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    Text(
                        "Berat Sarıboğa : ${data["beratsariboga"] == true ? "Var" : "Yok"}"
                        "",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ],
                ),
                actions: [
                  TextButton(
                    child: const Text("Kapat",
                        style: TextStyle(fontSize: 16, color: Colors.red)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            }
            return Text("loading");
          });
    },
  );
}

