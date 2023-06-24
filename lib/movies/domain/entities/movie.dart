import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String overview;
  final String   backdropPath;
  final String    title;
  final List<int> genreIds;
    var   voteAverage;
  final String   releaseDate;

     Movie( {
    required this.id,
    required this.overview,
    required this.backdropPath,
    required this.title,
    required this.genreIds,
    required this.voteAverage,
    required this.releaseDate,
 });



   @override
   //TODO: implement props
  List<Object?> get  props => [id,overview,backdropPath,title,genreIds,voteAverage,releaseDate];




}