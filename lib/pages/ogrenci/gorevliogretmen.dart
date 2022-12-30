import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';

showOgretmen(BuildContext context) {

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
      return alert;
    },
  );
}
