import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';
import 'package:yurt_app/widgets/button.dart';

class IdarePage extends StatelessWidget {
  final String mail;
  const IdarePage({super.key,required this.mail});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child:Scaffold(
        backgroundColor:const Color.fromARGB(255, 30, 32, 64),
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
                          child: Align(alignment:Alignment.topLeft,child:Text("e-Pansiyon İdare",style:textThemeDefault.headline1!.copyWith(fontSize:25,color:colorWhite,fontWeight:FontWeight.w800))),
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
                    Padding(
                      padding:const EdgeInsets.all(20.0),
                      child:Container(
                        width:size.width/1.2,
                        height:size.height/15,
                        decoration: const BoxDecoration(
                          color:Color.fromARGB(255, 45, 44, 136),
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
                        ButtonWidget(icon:Icons.announcement,text:"Duyuru Yap",theme: textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                      ],
                    ),
                    addVerticalSpace(size.width/20),
                    Row(
                      children: const [
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