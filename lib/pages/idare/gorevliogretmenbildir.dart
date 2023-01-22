import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';

gorevliOgretmenBildir(BuildContext context) {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  AlertDialog alert = AlertDialog(
    title: const Align(
        alignment: Alignment.center, child: Text("Görevli Öğretmen")),
    content: Column(
      children: [
        TextField(
          controller: controller,
          style: TextStyle(color: colorBlack),
          cursorColor: colorBlack,
          decoration: const InputDecoration(
            hintText: "Görevli Öğretmen Bildirin",
            hintStyle:
                TextStyle(color: colorBlack, fontWeight: FontWeight.w600),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: colorBlack),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: colorBlack),
            ),
          ),
        ),
        TextField(
          controller: controller2,
          style: TextStyle(color: colorBlack),
          cursorColor: colorBlack,
          decoration: const InputDecoration(
            hintText: "Görevli Öğretmen Telefon",
            hintStyle:
                TextStyle(color: colorBlack, fontWeight: FontWeight.w600),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: colorBlack),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: colorBlack),
            ),
          ),
        ),
      ],
    ),
    actions: [
      TextButton(
        child: const Text("Onayla",
            style: TextStyle(fontSize: 16, color: Colors.greenAccent)),
        onPressed: () {
          FirebaseFirestore.instance
              .collection('yurtapp')
              .doc('gorevliogretmen')
              .update({
            'ogretmen': controller.text,
          });
          FirebaseFirestore.instance
              .collection('yurtapp')
              .doc('gorevliogretmen')
              .update({
            'ogretmentel': controller2.text,
          });
          Navigator.pop(context);
        },
      ),
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
