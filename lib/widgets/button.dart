import 'package:flutter/material.dart';
import 'package:yurt_app/utils/widget_funcs.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String text;
  IconData icon;
  TextStyle theme;

  ButtonWidget(
      {Key? key, required this.text, required this.icon, required this.theme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: size.width / 3.5,
          height: size.height / 7,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 51, 123, 181),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 27),
              addVerticalSpace(6),
              Text(text, style: theme)
            ],
          ),
        ),
      ),
    );
  }
}
