import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';

import '../../utils/widget_funcs.dart';

showOgrenci(BuildContext context,String isimSoyisim, String odaNo,String tcNo, String telNo, String veliTelNo, String okul, String kanGrubu) {
  Size size = MediaQuery.of(context).size;
  AlertDialog alert = AlertDialog(
    content: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Text("İsim Soyisim: ${isimSoyisim}",style:textThemeDefault.bodyText1!.copyWith(color:colorBlack,fontSize:16)),
        addVerticalSpace(size.width/20),
        Text("Oda No: ${odaNo}",style:textThemeDefault.bodyText1!.copyWith(color:colorBlack,fontSize:16)),
        addVerticalSpace(size.width/20),
        Text("TC No: ${tcNo}",style:textThemeDefault.bodyText1!.copyWith(color:colorBlack,fontSize:16)),
        addVerticalSpace(size.width/20),
        Text("Telefon No: ${telNo}",style:textThemeDefault.bodyText1!.copyWith(color:colorBlack,fontSize:16)),
        addVerticalSpace(size.width/20),
        Text("Veli Telefon No: ${veliTelNo}",style:textThemeDefault.bodyText1!.copyWith(color:colorBlack,fontSize:16)),
        addVerticalSpace(size.width/20),
        Text("Okulu: ${okul}",style:textThemeDefault.bodyText1!.copyWith(color:colorBlack,fontSize:16)),
        addVerticalSpace(size.width/20),
        Text("Kan Grubu: ${kanGrubu}",style:textThemeDefault.bodyText1!.copyWith(color:colorBlack,fontSize:16)),
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

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
