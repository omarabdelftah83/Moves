import 'dart:convert';

import 'package:untitled3/movies/data/models/geners_model.dart';
import 'package:untitled3/movies/domain/entities/genres.dart';
import 'package:untitled3/movies/domain/entities/movie.dart';
import 'package:untitled3/movies/domain/entities/movie_datails.dart';

class MovieModelDateils extends MovieDatails{
  MovieModelDateils({
    required super.id,
    required super.backdropPath,
    required super.overview,
    required super.releaseDate,
    required super.title,
    required super.runtime,
    required super.voteAverage,
    required super.genres});
    factory MovieModelDateils.fromJson(Map<String,dynamic>json)=>MovieModelDateils(
      id: json['id'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      title: json['title'],
      runtime: json['runtime'],
      voteAverage: json['vote_average'].toDouble(),
      //----------------------//
    //  genres: GenersModel.fromJson(json['genres'])
      genres: List<GenersModel>.from(  (json['genres']).map((e) => GenersModel.fromJson(e)) )

    );

}