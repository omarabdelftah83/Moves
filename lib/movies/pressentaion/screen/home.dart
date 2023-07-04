import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled3/core/utiles/app_constance.dart';
import 'package:untitled3/movies/pressentaion/components/custom_outline.dart';
import 'package:untitled3/movies/pressentaion/screen/movies_screen.dart';
import 'package:untitled3/movies/pressentaion/widgit/Custom_Row_three_point.dart';
import 'package:untitled3/movies/pressentaion/widgit/custom_outLine_circle.dart';
import 'package:untitled3/movies/pressentaion/widgit/custom_outline_elevetedbutton.dart';
import 'package:untitled3/movies/pressentaion/widgit/custom_position%20_color_pink.dart';
import 'package:untitled3/movies/pressentaion/widgit/custom_position_color_green.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppConstance.black,
      body: SingleChildScrollView(
        child: Container(
          height: screenHight,
          width: screenWidth,
          child: Stack(
            children: [
              //position1//
              CustomPositionToColorpink(),
              //position2//
              CustomPositionColorGreen(),
              //circle//
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHight * 0.1,
                    ),
                    //circle//
                    CustomOutLineCircle(),
                    SizedBox(
                      height: screenHight * 0.08,
                    ),
                    Text(
                      'watch movies in \n virtual reality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: screenHight <= 660 ? 18 : 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: screenHight * 0.08,
                    ),
                    //Eleveted Button//
                    CustomOutLineElevetedButton(),
                    SizedBox(
                      height: 30,
                    ),
                    //three point//
                    CustomThreePoint(),
                    SizedBox(
                      height: screenHight * 0.06,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
