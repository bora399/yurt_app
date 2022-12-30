import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';

showDuyuru(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title:
        const Align(alignment: Alignment.center, child: Text("Duyuru")),
    content: Text("Sabah En Geç 8'de Kahvaltınızı Bitirmiş Olun!",style:textThemeDefault.bodyText1!.copyWith(fontSize:18,color:colorBlack)),
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
      return alert;
    },
  );
}
