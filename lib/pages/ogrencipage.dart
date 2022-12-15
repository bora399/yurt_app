import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';
import 'package:yurt_app/widgets/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    
    return SafeArea(
      child:Scaffold(
        backgroundColor:const Color.fromARGB(255, 45, 49, 101),
        body:LayoutBuilder(builder:(BuildContext context, BoxConstraints constraints){
          return SingleChildScrollView(
            child:ConstrainedBox(
              constraints:BoxConstraints(
                minHeight: constraints.minHeight,
              ),
              child: Padding(
                padding:const EdgeInsets.all(8.0),
                child:Column(
                  children: [
                    addVerticalSpace(size.height/60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:12.0),
                          child: Align(alignment:Alignment.topLeft,child:Text("Dijital Pansiyon",style:textThemeDefault.headline1!.copyWith(fontSize:25,color:colorWhite,fontWeight:FontWeight.w800))),
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
                    addVerticalSpace(size.width/60),
                    Padding(
                      padding:const EdgeInsets.all(20.0),
                      child:Container(
                        width:size.width/1.2,
                        height:size.height/6,
                        decoration: const BoxDecoration(
                          color:Color.fromARGB(255, 54, 52, 155),
                          borderRadius:BorderRadius.only(topRight:Radius.circular(60),topLeft:Radius.circular(10),bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10))
                        ),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:20.0,top:15.0,right:10.0),
                              child: Text("Hoş Geldin Bora!",style:textThemeDefault.bodyText1!.copyWith(fontSize:17)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0,top:15.0,right:10.0),
                              child: Text("Bu ekranda kaldığın pansiyon ile ilgili çeşitli içeriklere erişebilir ve kullanabilirsin.",style:textThemeDefault.bodyText1!.copyWith(fontSize:19)),
                            ),
                          ],
                        )
                      ),
                      ),
                    addVerticalSpace(size.width/50),
                    Row(
                      children: [
                    ButtonWidget(icon:Icons.report_problem,text:"Arıza Bildir",theme:textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                    ButtonWidget(icon:Icons.man,text:"Görevli Ö.",theme:textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                    ButtonWidget(icon:Icons.home,text:"Evci İzni",theme:textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                      ],
                    ),
                    addVerticalSpace(size.height/50),
                    Row(
                      children: [
                    ButtonWidget(icon:Icons.fastfood,text:"Yemek L.",theme:textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                    ButtonWidget(icon:Icons.sports_soccer,text:"Spor",theme:textThemeDefault.bodyText1!.copyWith(fontSize:18)),
                    ButtonWidget(icon:Icons.calculate,text:"Kalori Takip",theme:textThemeDefault.bodyText1!.copyWith(fontSize:18)),
                      ],
                    ),
                    addVerticalSpace(size.height/50),
                    Row(
                      children: [
                    ButtonWidget(icon:Icons.announcement,text:"Duyuru",theme:textThemeDefault.bodyText1!.copyWith(fontSize:16)),
                    ButtonWidget(icon:Icons.warning,text:"Acil Durum",theme:textThemeDefault.bodyText1!.copyWith(fontSize:18)),
                      ],
                    ),
                      ],
                    ),
                ),
              ),
            );
        })
      ),
    );
  }
}