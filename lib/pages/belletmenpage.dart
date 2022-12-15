import 'package:flutter/material.dart';

class BelletmenPage extends StatelessWidget {
  const BelletmenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor:const Color.fromARGB(255, 65, 70, 144),
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