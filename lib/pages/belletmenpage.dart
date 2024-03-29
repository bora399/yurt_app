import 'package:flutter/material.dart';
import 'package:yurt_app/pages/belletmen/odabilgisi.dart';
import 'package:yurt_app/pages/belletmen/ulaspage.dart';
import 'package:yurt_app/pages/belletmen/yemelistesipage.dart';
import 'package:yurt_app/pages/belletmen/yoklama-izin/evciizinpage.dart';
import 'package:yurt_app/pages/belletmen/yoklama-izin/etutyoklama.dart';
import 'package:yurt_app/pages/belletmen/yoklama-izin/yatyoklama.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';
import 'package:yurt_app/widgets/button.dart';

import 'belletmen/nobetpage.dart';

class BelletmenPage extends StatelessWidget {
  final String mail;
  const BelletmenPage({super.key,required this.mail});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child:Scaffold(
        backgroundColor:const Color.fromARGB(255, 65, 70, 144),
        body:LayoutBuilder(
          builder:(BuildContext context, BoxConstraints constraints){
            return SingleChildScrollView(
              child:ConstrainedBox(
                constraints:BoxConstraints(
                  minHeight: constraints.minHeight,
                ),
                child:Padding(
                  padding:const EdgeInsets.all(8.0),
                  child:Column(
                    children: [
                      addVerticalSpace(size.height/60),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:12.0),
                          child: Align(alignment:Alignment.topLeft,child:Text("e-Pansiyon Belletmen",style:textThemeDefault.headline1!.copyWith(fontSize:25,color:colorWhite,fontWeight:FontWeight.w800))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:12.0),
                          child: Align(alignment:Alignment.topRight,
                          child:Container(
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(50.0),
                              color:colorWhite,
                            ),
                            child: IconButton(
                              onPressed:(){},
                              icon:const Icon(Icons.person_rounded,)
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                        child:Container(
                          width:size.width/5,
                          child:Image.asset("assets/logo.png")
                        ),
                      ),
                    Padding(
                      padding:const EdgeInsets.all(20.0),
                      child:Container(
                        width:size.width/1.2,
                        height:size.height/15,
                        decoration: const BoxDecoration(
                          color:Color.fromARGB(255, 38, 37, 113),
                          borderRadius:BorderRadius.only(topRight:Radius.circular(60),topLeft:Radius.circular(10),bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10))
                        ),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment:Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(left:5.0,top:15.0,right:10.0),
                                child: Text("Hoş Geldin $mail!",style:textThemeDefault.bodyText1!.copyWith(fontSize:17)),
                              ),
                            ),
                          ],
                        )
                      ),
                      ),
                    addVerticalSpace(size.width/20),
                    Row(
                      children: [
                        ButtonWidget(widget:EtutYoklama(mail:mail),icon:Icons.people,text:"Etüt Yoklama",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                        ButtonWidget(widget:YatYoklama(mail:mail),icon:Icons.person_pin_circle,text:"Yat Yoklama",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                        ButtonWidget(widget:EvciIzin(mail:mail),icon:Icons.home,text:"Evci İzin",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                      ],
                    ),
                    addVerticalSpace(size.width/20),
                    Row(
                      children: [
                        ButtonWidget(widget:const YemekPage(),icon:Icons.fastfood,text:"Yemek Listesi",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                        ButtonWidget(widget:const NobetPage(),icon:Icons.watch_later,text:"Nöbet Listesi",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                        ButtonWidget(widget:const OdaPage(),icon:Icons.room,text:"Oda Bilgisi",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                      ],
                    ),
                    addVerticalSpace(size.width/20),
                    Row(
                      children: [
                        ButtonWidget(widget:const UlasPage(),icon:Icons.person,text:"Öğrenciye Ulaş",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                      ],
                    ),
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}