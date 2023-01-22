import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

import '../../utils/constants.dart';

class ShowYatYoklama extends StatefulWidget {
  const ShowYatYoklama({super.key});

  @override
  State<ShowYatYoklama> createState() => ShowYatYoklamaState();
}

class ShowYatYoklamaState extends State<ShowYatYoklama> {
  CollectionReference yurtapp =
      FirebaseFirestore.instance.collection('yurtapp');

  DateTime? dateTime;
  late String todaysDate;
  bool boolValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder<DocumentSnapshot>(
              future: yurtapp
                  .doc("yatyoklama")
                  .collection("23.12.2022")
                  .doc("101")
                  .get(),
              builder: (BuildContext context,
                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("Something went wrong");
                }

                if (snapshot.hasData && !snapshot.data!.exists) {
                  return Text("Document does not exist");
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  Map data = snapshot.data!.data() as Map;
                  Size size = MediaQuery.of(context).size;
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
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
                                            .copyWith(
                                                fontWeight: FontWeight.w700)))),
                          ),
                        ),
                        addVerticalSpace(size.height/35),
                        Text(boolValue == true?"Bora Saltık : ${data["borasaltik"]==true?"Var" : "Yok"}":"",style:TextStyle(fontSize:18,fontWeight:FontWeight.w600)),
                        Text(boolValue == true?"Enes Çankaya : ${data["enescankaya"]==true?"Var" : "Yok"}":"",style:TextStyle(fontSize:18,fontWeight:FontWeight.w600)),
                        Text(boolValue == true?"Ahmet Öztürk : ${data["ahmetozturk"]==true?"Var" : "Yok"}":"",style:TextStyle(fontSize:18,fontWeight:FontWeight.w600)),
                        Text(boolValue == true?"Berat Sarıboğa : ${data["beratsariboga"]==true?"Var" : "Yok"}":"",style:TextStyle(fontSize:18,fontWeight:FontWeight.w600)),
                      ],
                    ),
                  );
                }

                return Text("Loading..");
              })),
    );
  }
}
