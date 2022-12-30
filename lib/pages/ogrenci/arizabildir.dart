import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';

showArizaBildir(BuildContext context) {
  final TextEditingController odaController = TextEditingController();
  final TextEditingController isimController = TextEditingController();
  final TextEditingController arizaController = TextEditingController();

  AlertDialog alert = AlertDialog(
    title:
        const Align(alignment: Alignment.center, child: Text("Arıza Bildir")),
    content: Column(
      children: [
        TextField(
          controller: odaController,
          style: TextStyle(color: colorBlack),
          cursorColor: colorBlack,
          decoration: const InputDecoration(
            hintText: "Oda",
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
          controller: isimController,
          style: const TextStyle(color: colorBlack),
          cursorColor: colorBlack,
          decoration: const InputDecoration(
            hintText: "İsim Soyisim",
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
          controller: arizaController,
          style: const TextStyle(color: colorBlack),
          cursorColor: colorBlack,
          decoration: const InputDecoration(
            hintText: "Arıza",
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
        child: const Text("Kapat",
            style: TextStyle(fontSize: 16, color: Colors.redAccent)),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      TextButton(
        child: const Text("Onayla",
            style: TextStyle(fontSize: 16, color: Colors.greenAccent)),
        onPressed: () {
          FirebaseFirestore.instance
              .collection('yurtapp')
              .doc('arizalar')
              .update({
            'isim_soyisim': isimController.text,
          });
          FirebaseFirestore.instance
              .collection('yurtapp')
              .doc('arizalar')
              .update({
            'oda': odaController.text,
          });
          FirebaseFirestore.instance
              .collection('yurtapp')
              .doc('arizalar')
              .update({
            'ariza': arizaController.text,
          });
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
