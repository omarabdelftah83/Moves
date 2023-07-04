
import 'package:flutter/material.dart';

class CustomThreePoint extends StatelessWidget {
  const CustomThreePoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          3,
              (index) => Container(
              width: 7,
              height: 7,
              margin: EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 0
                      ? Colors.greenAccent
                      : index == 1
                      ? Colors.white
                      : Colors.pink))),
    );
  }
}
