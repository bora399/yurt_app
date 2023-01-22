import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';

showAcilDurum(BuildContext context) {
  CollectionReference users = FirebaseFirestore.instance.collection('yurtapp');

  AlertDialog alert = AlertDialog(
    title: const Align(alignment: Alignment.center, child: Text("Acil Durum")),
    content: Text("Tüm Öğrenciler Etütten Bekleniyor!",
        style: textThemeDefault.bodyText1!
            .copyWith(fontSize: 18, color: colorBlack)),
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

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return FutureBuilder<DocumentSnapshot>(
          future: users.doc("acildurum").get(),
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
                    alignment: Alignment.center, child: Text("Acil Durum")),
                content: Text(data["acildurum"],
                    style: textThemeDefault.bodyText1!
                        .copyWith(fontSize: 18, color: colorBlack)),
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
