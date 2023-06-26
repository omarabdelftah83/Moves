import 'package:equatable/equatable.dart';
import 'package:untitled3/movies/domain/entities/genres.dart';

class MovieDatails extends Equatable {
  final int id;
  final String backdropPath;
  final String overview;
  final String releaseDate;
  final String title;
  final int runtime;
  final double voteAverage;
  final List<Genress> genres;

  MovieDatails({
     required this.id,
     required  this.backdropPath,
     required this.overview,
     required this.releaseDate,
     required  this.title,
     required this.runtime,
     required  this.voteAverage,
     required this.genres});

  @override
  // TODO: implement props
  List<Object?> get props => throw [id,backdropPath,overview,releaseDate,  title, runtime,voteAverage,genres ];


}