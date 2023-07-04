
import 'package:flutter/material.dart';
import 'package:untitled3/movies/pressentaion/components/custom_outline.dart';
import 'package:untitled3/movies/pressentaion/screen/movies_screen.dart';

class CustomOutLineElevetedButton extends StatelessWidget {
  const CustomOutLineElevetedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: CustomOutline(
      strokeWidth: 4,
      radius: 20,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.pinkAccent,
          Colors.greenAccent,
        ],
      ),
      width: 160,
      height: 38,
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.pinkAccent.withOpacity(0.3),
                Colors.greenAccent.withOpacity(0.3),
              ]),
        ),
        //Navigator//
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      MainMoviesScreen())),
          child: Center(
              child: Text(
                'skip',
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
        ),
        width: 160,
        height: 38,
      ),
    ),);
  }
}
