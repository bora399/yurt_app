import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yurt_app/pages/belletmenpage.dart';
import 'package:yurt_app/pages/idarepage.dart';
import 'package:yurt_app/pages/ogrencipage.dart';
import 'package:yurt_app/utils/constants.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

final FirebaseAuth auth = FirebaseAuth.instance;
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  int success = 1;
  String userMail = "";
  String userName = "";

  void signIn() async{
    final User? user = (await auth.signInWithEmailAndPassword(email: mailController.text, password: passController.text)).user;
  
    if(user != null){
      setState((){
        success = 2;
        userMail = user.email!;
        userName = userMail;
        userName = userMail.replaceFirst(userName[0],"");
        userName = userName.substring(0,userName.indexOf("@"));
        userName = userName.replaceFirst(userName[0],userName[0].toUpperCase());
      });
    }
    else{
      setState((){
        success = 3;
      });
    }
  }

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
                      TextField(
                        controller:mailController,
                        style:const TextStyle(color:colorWhite),
                        cursorColor:colorWhite,
                        decoration:const InputDecoration(
                          hintText:"E-Mail",
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
                      TextField(
                        controller:passController,
                        style:const TextStyle(color:colorWhite),
                        cursorColor:colorWhite,
                        decoration:const InputDecoration(
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
                          signIn();
                          if(ogrenciValue == true){
                            if(success == 2){
                              if(userMail.startsWith("1")){
                                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => OgrenciPage(mail:userName)));
                              }
                            }
                          }
                          if(belletmenValue == true){
                            if(success == 2){
                              if(userMail.startsWith("2")){
                                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => BelletmenPage(mail:userName)));
                              }
                            }                          }
                          if(idareValue == true){
                            if(success == 2){
                              if(userMail.startsWith("3")){
                                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => IdarePage(mail:userName)));
                              }
                            }                          }
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