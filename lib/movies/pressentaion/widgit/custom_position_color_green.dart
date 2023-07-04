
import 'dart:ui';

import 'package:flutter/material.dart';

class CustomPositionColorGreen extends StatelessWidget {
  const CustomPositionColorGreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Positioned(
        bottom: screenHight * 0.30,
        right: -88,
        child: Container(
          //  height: 200,
          // width: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.greenAccent),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
            child: Container(
              height: 200,
              width: 200,
            ),
          ),
        ));
  }
}
