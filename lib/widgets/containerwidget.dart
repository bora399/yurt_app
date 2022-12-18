import 'package:flutter/material.dart';
import 'package:yurt_app/utils/constants.dart';

// ignore: must_be_immutable
class ContainerWidget extends StatelessWidget {
  String name;
  String adress;
  String number;

  ContainerWidget({
    Key? key,
    required this.name,
    required this.adress,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.2,
      height: size.height / 13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Card(
        color: const Color.fromARGB(255, 27, 15, 86),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(name,
                      style: const TextStyle(color: colorWhite, fontSize: 15))),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(adress,
                    style: const TextStyle(
                      color: colorWhite,
                      fontSize: 15,
                    ))),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(number,
                      style: const TextStyle(color: colorWhite, fontSize: 15))),
            ),
          ],
        ),
      ),
    );
  }
}
