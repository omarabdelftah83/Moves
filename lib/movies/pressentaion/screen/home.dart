import 'package:flutter/material.dart';
import 'package:untitled3/movies/pressentaion/screen/movies_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WelCome'),
        actions: [

        IconButton(onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (BuildContext context) => MainMoviesScreen()));
        }, icon: Icon(Icons.arrow_right,size: 50,))
      ],),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 290,
            ),
            Text(
              'The Movies',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
