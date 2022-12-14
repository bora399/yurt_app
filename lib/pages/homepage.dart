import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

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
                        height:size.height/4.5,
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
                              child: Text("Bu ekranda kaldığın pansiyon ile ilgili çeşitli içeriklere erişebilir ve kullanabilirsin.",style:textThemeDefault.bodyText1!.copyWith(fontSize:21)),
                            ),
                          ],
                        )
                      ),
                      ),
                    addVerticalSpace(size.width/50),
                    Row(
                      children: [
                        Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Align(
                        alignment:Alignment.topLeft,
                        child: Container(
                          width:size.width/3.5,
                          height:size.height/7,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 51, 123, 181),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.report_problem,color:Colors.white,size:27),
                              addVerticalSpace(6),
                              Text("Arıza Bildir",style:textThemeDefault.bodyText1!.copyWith(fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Align(
                        alignment:Alignment.topLeft,
                        child: Container(
                          width:size.width/3.5,
                          height:size.height/7,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 51, 123, 181),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.man,color:Colors.white,size:27),
                              addVerticalSpace(6),
                              Text("Görevli Ö.",style:textThemeDefault.bodyText1!.copyWith(fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Align(
                        alignment:Alignment.topLeft,
                        child: Container(
                          width:size.width/3.5,
                          height:size.height/7,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 51, 123, 181),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.home,color:Colors.white,size:27),
                              addVerticalSpace(6),
                              Text("Evci İzni",style:textThemeDefault.bodyText1!.copyWith(fontSize: 16))
                            ],
                          ),
                        ),
                        
                      ),
                    ),
                      ],
                    ),
                    addVerticalSpace(size.height/50),
                    Row(
                      children: [
                        Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Align(
                        alignment:Alignment.topLeft,
                        child: Container(
                          width:size.width/3.5,
                          height:size.height/7,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 51, 123, 181),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.fastfood,color:colorWhite,size:27),
                              addVerticalSpace(6),
                              Text("Yemek L.",style:textThemeDefault.bodyText1!.copyWith(fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Align(
                        alignment:Alignment.topLeft,
                        child: Container(
                          width:size.width/3.5,
                          height:size.height/7,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 51, 123, 181),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.sports_soccer,color:colorWhite,size:27),
                              addVerticalSpace(6),
                              Text("Spor",style:textThemeDefault.bodyText1!.copyWith(fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Align(
                        alignment:Alignment.topLeft,
                        child: Container(
                          width:size.width/3.5,
                          height:size.height/7,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 51, 123, 181),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.calculate,color:colorWhite,size:27),
                              addVerticalSpace(6),
                              Text("Kalori Takip",style:textThemeDefault.bodyText1!.copyWith(fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                    ),
                      ],
                    ),
                    addVerticalSpace(size.height/50),
                    Row(
                      children: [
                        Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Align(
                        alignment:Alignment.topLeft,
                        child: Container(
                          width:size.width/3.5,
                          height:size.height/7,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 51, 123, 181),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.announcement,color:colorWhite,size:27),
                              addVerticalSpace(6),
                              Text("Duyuru",style:textThemeDefault.bodyText1!.copyWith(fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Align(
                        alignment:Alignment.topLeft,
                        child: Container(
                          width:size.width/3.5,
                          height:size.height/7,
                          decoration: const BoxDecoration(
                            color:Color.fromARGB(255, 51, 123, 181),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.warning,color:colorWhite,size:27),
                              addVerticalSpace(6),
                              Text("Acil Durum",style:textThemeDefault.bodyText1!.copyWith(fontSize: 16))
                            ],
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
        })
      ),
    );
  }
}