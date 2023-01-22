import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';

showOgretmen(BuildContext context) {
  CollectionReference yurtapp =
      FirebaseFirestore.instance.collection('yurtapp');

  AlertDialog alert = AlertDialog(
    title:
        const Align(alignment: Alignment.center, child: Text("Selçuk Daloğlu")),
    content: Text("Telefon Numarası : 0xxx xxx xx xx"),
    actions: [
      TextButton(
        child: const Text("Kapat",
            style: TextStyle(fontSize: 16, color: Colors.redAccent)),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return FutureBuilder<DocumentSnapshot>(
          future: yurtapp.doc("gorevliogretmen").get(),
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
                title: Align(
                    alignment: Alignment.center, child: Text(data["ogretmen"])),
                content: Text("Telefon Numarası: ${data["ogretmentel"]}"),
                actions: [
                  TextButton(
                    child: const Text("Kapat",
                        style:
                            TextStyle(fontSize: 16, color: Colors.redAccent)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            }
            return Text("loading...");
          });
    },
  );
}
