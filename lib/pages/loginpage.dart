import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yurt_app/pages/belletmenpage.dart';
import 'package:yurt_app/pages/idarepage.dart';
import 'package:yurt_app/pages/ogrencipage.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ogrenciValue = false;
  void getPrefOgrenci()async{
    var pref = await SharedPreferences.getInstance();
    ogrenciValue = pref.getBool("ogrenci")!;
  }
  bool belletmenValue = false;
  void getPrefBelletmen()async{
    var pref = await SharedPreferences.getInstance();
    belletmenValue = pref.getBool("belletmen")!;
  }
  bool idareValue = false;
  void getPrefIdare()async{
    var pref = await SharedPreferences.getInstance();
    idareValue = pref.getBool("idare")!;
  }

  @override
  void initState(){
    super.initState();
    getPrefOgrenci();
    getPrefBelletmen();
    getPrefIdare();
  }

  @override
  Widget build(BuildContext context) {
    
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child:Scaffold(
        backgroundColor:const Color.fromARGB(255, 45, 49, 101),
        body:LayoutBuilder(
          builder:(BuildContext context, BoxConstraints constraints){
            return SingleChildScrollView(
              child:ConstrainedBox(
                constraints:BoxConstraints(
                  minHeight:constraints.minHeight,
                ),
                child:Padding(
                  padding:EdgeInsets.symmetric(horizontal:size.width/6),
                  child:Column(
                    children: [
                      addVerticalSpace(size.height/4),
                      Align(alignment:Alignment.center,child: Text("e-Pansiyon",style:textThemeDefault.headline1!.copyWith(color:colorWhite))),
                      addVerticalSpace(size.height/50),
                      Container(
                        decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(12.0),
                              color:const Color.fromARGB(255, 235, 235, 235),
                            ),
                        height:5.5,
                        width:size.width/1.5,
                      ),
                      addVerticalSpace(size.height/25),
                      const TextField(
                        style:TextStyle(color:colorWhite),
                        cursorColor:colorWhite,
                        decoration:InputDecoration(
                          hintText:"Kullanıcı Adı",
                          hintStyle:TextStyle(color:colorWhite,fontWeight:FontWeight.w600),
                          prefixIcon:Icon(Icons.account_circle,color:colorWhite),
                          enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorWhite),
                          ),  
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorWhite),
                          ),
                        ),
                      ),
                      addVerticalSpace(size.height/35),
                      const TextField(
                        style:TextStyle(color:colorWhite),
                        cursorColor:colorWhite,
                        decoration:InputDecoration(
                          hintText:"Şifre",
                          hintStyle:TextStyle(color:colorWhite,fontWeight:FontWeight.w600),
                          prefixIcon:Icon(Icons.lock,color:colorWhite),
                          enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorWhite),
                          ),  
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorWhite),
                          ),
                        ),
                      ),
                      addVerticalSpace(size.height/30),
                      ElevatedButton(
                        onPressed:(){
                          if(ogrenciValue == true){
                            Navigator.push(context,MaterialPageRoute(builder:(context) => const HomePage()));
                          }
                          if(belletmenValue == true){
                            Navigator.push(context,MaterialPageRoute(builder:(context) => const BelletmenPage()));
                          }
                          if(idareValue == true){
                            Navigator.push(context,MaterialPageRoute(builder:(context) => const IdarePage()));
                          }
                        },
                        style:ElevatedButton.styleFrom(
                          backgroundColor:const Color.fromARGB(255, 34, 37, 69),
                        ),
                        child: const Text("GIRIS YAP",style:TextStyle(color:colorWhite,fontWeight:FontWeight.w600,fontSize:18)),
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