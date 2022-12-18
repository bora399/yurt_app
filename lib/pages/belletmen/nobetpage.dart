import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

class NobetPage extends StatelessWidget {
  const NobetPage({super.key});
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
                    child: Text("Nöbet Listesi",
                        style: textThemeDefault.bodyText1!
                            .copyWith(fontSize: 32))),
                addVerticalSpace(size.height / 15),
                CarouselSlider(
                  items: [
                    Container(
                      height:size.height/6,
                      width:size.width/1.5,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(12.0),
                        color:Color.fromARGB(255, 27, 15, 86),
                      ),
                      child:Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Pazartesi",style:TextStyle(color:colorWhite,fontSize:22))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Selçuk D.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:0.0),
                            child: Align(alignment:Alignment.center,child: Text("Ali P.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height:size.height/6,
                      width:size.width/1.5,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(12.0),
                        color:Color.fromARGB(255, 27, 15, 86),
                      ),
                      child:Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Salı",style:TextStyle(color:colorWhite,fontSize:22))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Selçuk D.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:0.0),
                            child: Align(alignment:Alignment.center,child: Text("Ali P.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height:size.height/6,
                      width:size.width/1.5,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(12.0),
                        color:Color.fromARGB(255, 27, 15, 86),
                      ),
                      child:Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Çarşamba",style:TextStyle(color:colorWhite,fontSize:22))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Selçuk D.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:0.0),
                            child: Align(alignment:Alignment.center,child: Text("Ali P.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height:size.height/6,
                      width:size.width/1.5,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(12.0),
                        color:Color.fromARGB(255, 27, 15, 86),
                      ),
                      child:Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Perşembe",style:TextStyle(color:colorWhite,fontSize:22))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Selçuk D.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:0.0),
                            child: Align(alignment:Alignment.center,child: Text("Ali P.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height:size.height/6,
                      width:size.width/1.5,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(12.0),
                        color:Color.fromARGB(255, 27, 15, 86),
                      ),
                      child:Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Cuma",style:TextStyle(color:colorWhite,fontSize:22))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Selçuk D.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:0.0),
                            child: Align(alignment:Alignment.center,child: Text("Ali P.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height:size.height/6,
                      width:size.width/1.5,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(12.0),
                        color:Color.fromARGB(255, 27, 15, 86),
                      ),
                      child:Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Cumartesi",style:TextStyle(color:colorWhite,fontSize:22))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Selçuk D.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:0.0),
                            child: Align(alignment:Alignment.center,child: Text("Ali P.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height:size.height/6,
                      width:size.width/1.5,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(12.0),
                        color:Color.fromARGB(255, 27, 15, 86),
                      ),
                      child:Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Pazar",style:TextStyle(color:colorWhite,fontSize:22))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:15.0),
                            child: Align(alignment:Alignment.center,child: Text("Selçuk D.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:0.0),
                            child: Align(alignment:Alignment.center,child: Text("Ali P.",style:TextStyle(color:colorWhite,fontSize:18))),
                          ),
                        ],
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
