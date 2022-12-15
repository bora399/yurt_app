import 'package:flutter/material.dart';

class IdarePage extends StatelessWidget {
  const IdarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor:Color.fromARGB(255, 30, 32, 64),
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
                      Align(
                        alignment:Alignment.topLeft,
                        child:Text("")
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