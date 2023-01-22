import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/pages/belletmen/showogrenci.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';
import 'package:yurt_app/widgets/containerwidget.dart';

class UlasPage extends StatefulWidget {
  const UlasPage({super.key});

  @override
  State<UlasPage> createState() => _UlasPageState();
}

class _UlasPageState extends State<UlasPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 65, 70, 144),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                addVerticalSpace(size.height / 70),
                Align(
                    alignment: Alignment.center,
                    child: Text("Öğrenciye Ulaş",
                        style: textThemeDefault.bodyText1!
                            .copyWith(fontSize: 32))),
                addVerticalSpace(size.height / 30),
                Container(
                  width: size.width / 1.1,
                  height: size.height / 17,
                  color: colorWhite,
                  child: TextField(
                    controller:controller,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search, color: colorBlack),
                      hintText:"Öğrenci Ara"
                    ),
                  ),
                ),
                addVerticalSpace(size.height/100),
                InkWell(
                  onTap:(){
                    controller.text = controller.text.toLowerCase();
                    print(controller.text);
                    if(controller.text == "bora saltik"){
                      showOgrenci(context,"Bora Saltık","101","1031668xxxx","0551594xxxx","0545711xxxx","Tekirdağ Fen Lisesi","ABRH+");
                    }
                    else if(controller.text == "enes tunahan cankaya"){
                      showOgrenci(context,"Enes Tunahan Çankaya","101","00000000000","00000000000","00000000000","Tekirdağ Sosyal Bilimler Lisesi","ARH+");
                    }
                    else if(controller.text == "berat sariboga"){
                      showOgrenci(context,"Berat Sarıboğa","101","00000000000","00000000000","00000000000","Tekirdağ Sosyal Bilimler Lisesi","0RH-");
                    }
                    else if(controller.text == "ahmetozturk"){
                      showOgrenci(context,"Ahmet Öztürk","101","00000000000","00000000000","00000000000","Tekirdağ Sosyal Bilimler Lisesi","0RH+");
                    }
                    else if(controller.text == "arda aktas"){
                      showOgrenci(context,"Arda Aktas","102","00000000000","00000000000","00000000000","Tekirdag Fen Lisesi","BRH+");
                    }
                    else if(controller.text == "aydin alp saygi"){
                      showOgrenci(context,"Aydın Alp Saygi","102","00000000000","00000000000","00000000000","Tekirdag Fen Lisesi","ARH+");
                    }
                    else if(controller.text == "alperen aptiogullari"){
                      showOgrenci(context,"Alperen Aptiogullari","101","00000000000","00000000000","00000000000","Tekirdag Fen Lisesi","ABRH-");
                    }

                  },
                  child:Container(
                    width:size.width/2,
                    height:size.height/17,
                    decoration:BoxDecoration(
                      color:Colors.green,
                      borderRadius:BorderRadius.circular(12.0),
                    ),
                    child:Align(alignment:Alignment.center,child: Text("Öğrenci Ara",style:textThemeDefault.bodyText1!.copyWith(color:colorBlack,fontSize:20,fontWeight:FontWeight.w700)))
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
