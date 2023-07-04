
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class AppConstance{
 static const Color black=CupertinoColors.darkBackgroundGray;
 static const String baseUrl="https://api.themoviedb.org/3";
 static const String apiKay="9455c7fc57df114e23d6837e36211cfe";
 static const String nowPlayingMoviesPath='$baseUrl/movie/now_playing?api_key=$apiKay';
 static const String popularMoviesPath='$baseUrl/movie/popular?api_key=$apiKay';
 static const String topRatedMoviesPath='$baseUrl/movie/top_rated?api_key=$apiKay';
 static const String baseImageUrl='http://image.tmdb.org/t/p/w500';

 static String getDatailesMoviesPath(int id)=>'$baseUrl/movie/$id?api_key=$apiKay';

// static const String RecomndationMoviesPath='$baseUrl/movie/385687/recommendations?api_key=$apiKay';
 static String imageUrl(String path){

  log('image pathe test == $path');
  return '$baseImageUrl$path';
 }
}
//'https://api.themoviedb.org/3/movie/now_playing?api_key=9455c7fc57df114e23d6837e36211cfe'
/////         'http://image.tmdb.org/t/p/w500/xXp7TbCOKe4lB65ngkt3CuhsiAa.jpg'