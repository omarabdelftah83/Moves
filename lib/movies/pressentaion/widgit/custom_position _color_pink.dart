
import 'dart:ui';

import 'package:flutter/material.dart';

class CustomPositionToColorpink extends StatelessWidget {
  const CustomPositionToColorpink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return   Positioned(
        top: screenHight * 0.1,
        left: -88,
        child: Container(
          // height: 166,
          // width: 166,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.pinkAccent),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
            child: Container(
              height: 166,
              width: 166,
            ),
          ),
    ));
  }
}
