import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child:Scaffold(
        appBar:AppBar(
          backgroundColor:const Color.fromARGB(255, 41, 50, 109),
          leading: const Icon(Icons.menu),
          title:const Text("Giriş Yapınız",style:TextStyle(fontSize:22,fontWeight:FontWeight.w700)),
          centerTitle:true,
        ),
        backgroundColor: const Color.fromARGB(255, 45, 49, 101),
        body:Column(
          children: [
            Expanded(
              flex:1,
              child: InkWell(
                onTap:(){},
                child: Container(
                  color:const Color.fromRGBO(46, 49, 94, 1),
                  width:size.width,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.person,size:56,color:colorWhite),
                      Text("Öğrenci Girişi",style:TextStyle(fontWeight:FontWeight.w700,fontSize:28,color:colorWhite,))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: InkWell(
                onTap:(){},
                child: Container(
                  color:const Color.fromRGBO(36, 38, 79, 1),
                  width:size.width,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.person,size:56,color:colorWhite),
                      Text("Belletmen Girişi",style:TextStyle(fontWeight:FontWeight.w700,fontSize:28,color:colorWhite,))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: InkWell(
                onTap:(){},
                child: Container(
                  color:const Color.fromRGBO(46, 49, 94, 1),
                  width:size.width,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.person,size:56,color:colorWhite),
                      Text("İdare Girişi",style:TextStyle(fontWeight:FontWeight.w700,fontSize:28,color:colorWhite,))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}