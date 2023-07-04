
import 'package:flutter/material.dart';
import 'package:untitled3/movies/pressentaion/components/custom_outline.dart';

class CustomOutLineCircle extends StatelessWidget {
  const CustomOutLineCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(child:
    CustomOutline(
      strokeWidth: 4,
      radius: screenWidth * 0.8,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.pinkAccent.withOpacity(0.5),
          Colors.white.withOpacity(0.3),
          Colors.greenAccent.withOpacity(0.5),
          Colors.greenAccent.withOpacity(0.5),
        ],
        stops: [0.2, 0.4, 0.6, 1],
      ),
      width: screenWidth * 0.7,
      height: screenHight * 0.4,
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
                'assets/Untitled.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        // width:screenWidth * 1,
        // height: .4,
      ),
    ),);
  }
}
