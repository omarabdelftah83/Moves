import 'package:flutter/material.dart';
import 'package:untitled3/core/utiles/app_string.dart';
import 'package:untitled3/movies/domain/entities/movie.dart';
////import 'package:untitled3/movies/pressentaion/screen/movies_screan.dart';
import 'package:untitled3/movies/data/datasourse/movie_remote_datasourse.dart';
import 'package:untitled3/movies/data/repository/movie_repository.dart';
import 'package:untitled3/movies/domain/entities/movie.dart';
import 'package:untitled3/movies/domain/repository/base_movies_repository.dart';
import 'package:untitled3/movies/domain/usercases/get%20_nowplaying_movies_usercase.dart';
import 'package:untitled3/movies/pressentaion/screen/home.dart';
import 'package:untitled3/movies/pressentaion/screen/movies_screen.dart';

import 'core/servies/servies_locator.dart';
void main() {
  ServiesLcator().init();
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
 MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: AppString.appName,
      home:Home(),
    );
  }
}









