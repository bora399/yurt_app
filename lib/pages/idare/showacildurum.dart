import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';

acilDurumBildir(BuildContext context) {
  TextEditingController controller = TextEditingController();

  AlertDialog alert = AlertDialog(
    title:
        const Align(alignment: Alignment.center, child: Text("Acil Durum")),
    content: TextField(
          controller: controller,
          style: TextStyle(color: colorBlack),
          cursorColor: colorBlack,
          decoration: const InputDecoration(
            hintText: "Acil Durum Bildirim",
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
    actions: [
      TextButton(
        child: const Text("Onayla",
            style: TextStyle(fontSize: 16, color: Colors.greenAccent)),
        onPressed: () {
          FirebaseFirestore.instance
              .collection('yurtapp')
              .doc('acildurum')
              .update({
            'acildurum': controller.text,
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
