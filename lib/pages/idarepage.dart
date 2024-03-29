import 'package:flutter/material.dart';
import 'package:yurt_app/pages/idare/gorevliogretmenbildir.dart';
import 'package:yurt_app/pages/idare/showacildurum.dart';
import 'package:yurt_app/pages/idare/showduyuru.dart';
import 'package:yurt_app/pages/idare/showetutyoklama.dart';
import 'package:yurt_app/pages/ogrenci/acildurum.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';
import 'package:yurt_app/widgets/button.dart';

import 'belletmen/yoklama-izin/etutyoklama.dart';
import 'idare/showyatyoklama.dart';

class IdarePage extends StatelessWidget {
  final String mail;
  const IdarePage({super.key, required this.mail});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 30, 32, 64),
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
                              child: Text("e-Pansiyon İdare",
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
                          height: size.height / 15,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 45, 44, 136),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(60),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, top: 15.0, right: 10.0),
                                  child: Text("Hoş Geldin $mail!",
                                      style: textThemeDefault.bodyText1!
                                          .copyWith(fontSize: 17)),
                                ),
                              ),
                            ],
                          )),
                    ),
                    addVerticalSpace(size.width / 20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: InkWell(
                            onTap: () {
                              acilDurumBildir(context);
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
                                    Text("Acil Durum Bildir",
                                        style: textThemeDefault.bodyText1!
                                            .copyWith(fontSize: 13))
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
                              duyuruBildir(context);
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
                                    Icon(Icons.announcement,
                                        color: Colors.white, size: 27),
                                    addVerticalSpace(6),
                                    Text("Duyuru Bildir",
                                        style: textThemeDefault.bodyText1!
                                            .copyWith(fontSize: 13))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        ButtonWidget(widget:ShowYatYoklama(),icon:Icons.people,text:"Yat Yoklama",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                      ],
                    ),
                    addVerticalSpace(size.width / 20),
                    Row(
                      children: [
                        ButtonWidget(widget:ShowEtutYoklama(),icon:Icons.people,text:"Etüt Yoklama",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: InkWell(
                            onTap: () {
                              gorevliOgretmenBildir(context);
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
                                    Icon(Icons.announcement,
                                        color: Colors.white, size: 27),
                                    addVerticalSpace(6),
                                    Text("Görevli Ö. Ekle",
                                        style: textThemeDefault.bodyText1!
                                            .copyWith(fontSize: 15))
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
        }),
      ),
    );
  }
}
