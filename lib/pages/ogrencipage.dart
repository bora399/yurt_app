import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/pages/belletmen/yemelistesipage.dart';
import 'package:yurt_app/pages/ogrenci/acildurum.dart';
import 'package:yurt_app/pages/ogrenci/arizabildir.dart';
import 'package:yurt_app/pages/ogrenci/showduyuru.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';
import 'package:yurt_app/widgets/button.dart';

import 'ogrenci/gorevliogretmen.dart';

class OgrenciPage extends StatefulWidget {
  final String mail;
  const OgrenciPage({super.key, required this.mail});

  @override
  State<OgrenciPage> createState() => _OgrenciPageState();
}

class _OgrenciPageState extends State<OgrenciPage> {
  
 
  

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    

    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 45, 49, 101),
          body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.minHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      addVerticalSpace(size.height / 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("e-Pansiyon Öğrenci",
                                    style: textThemeDefault.headline1!.copyWith(
                                        fontSize: 25,
                                        color: colorWhite,
                                        fontWeight: FontWeight.w800))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: colorWhite,
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.person_rounded,
                                    )),
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
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                            width: size.width / 1.2,
                            height: size.height / 6,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 54, 52, 155),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(60),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 15.0, right: 10.0),
                                  child: Text("Hoş Geldin ${widget.mail}!",
                                      style: textThemeDefault.bodyText1!
                                          .copyWith(fontSize: 17)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 15.0, right: 10.0),
                                  child: Text(
                                      "Bu ekranda kaldığın pansiyon ile ilgili çeşitli içeriklere erişebilir ve kullanabilirsin.",
                                      style: textThemeDefault.bodyText1!
                                          .copyWith(fontSize: 19)),
                                ),
                              ],
                            )),
                      ),
                      addVerticalSpace(size.width / 50),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: InkWell(
                              onTap: () {
                                showArizaBildir(context);
                              },
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: size.width / 3.5,
                                  height: size.height / 7,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 51, 123, 181),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.report_problem,
                                          color: Colors.white, size: 27),
                                      addVerticalSpace(6),
                                      Text("Arıza Bildir",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(fontSize: 16))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: InkWell(
                              onTap: () {
                                showOgretmen(context);
                              },
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: size.width / 3.5,
                                  height: size.height / 7,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 51, 123, 181),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.man,
                                          color: Colors.white, size: 27),
                                      addVerticalSpace(6),
                                      Text("Görevli Ö.",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ButtonWidget(
                              widget: const YemekPage(),
                              icon: Icons.fastfood,
                              text: "Yemek L.",
                              theme: textThemeDefault.bodyText1!
                                  .copyWith(fontSize: 16)),
                        ],
                      ),
                      addVerticalSpace(size.height / 50),
                      Row(
                        children: [
                          ButtonWidget(
                              icon: Icons.sports_soccer,
                              text: "Spor",
                              theme: textThemeDefault.bodyText1!
                                  .copyWith(fontSize: 18)),
                          ButtonWidget(
                              icon: Icons.music_note,
                              text: "Radyo",
                              theme: textThemeDefault.bodyText1!
                                  .copyWith(fontSize: 18)),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: InkWell(
                              onTap: () {
                                showDuyuru(context);
                              },
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: size.width / 3.5,
                                  height: size.height / 7,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 51, 123, 181),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.announcement,
                                          color: Colors.white, size: 27),
                                      addVerticalSpace(6),
                                      Text("Duyuru",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(fontSize: 16))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      addVerticalSpace(size.height / 50),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: InkWell(
                              onTap: () {
                                showAcilDurum(context);
                              },
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: size.width / 3.5,
                                  height: size.height / 7,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 51, 123, 181),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.warning,
                                          color: Colors.white, size: 27),
                                      addVerticalSpace(6),
                                      Text("Acil Durum",
                                          style: textThemeDefault.bodyText1!
                                              .copyWith(fontSize: 16))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
