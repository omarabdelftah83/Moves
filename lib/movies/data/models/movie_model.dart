import 'package:untitled3/movies/domain/entities/movie.dart';

   class MovieModel extends Movie{
    MovieModel({required super.id,
   required super.overview,
   required super.backdropPath,
   required super.title,
   required super.genreIds,
   required super.voteAverage,
   required super.releaseDate});
     /////////////////////////////
     factory MovieModel.fromJson(Map<String,dynamic>json)=>MovieModel(
     id: json['id'],
     overview: json['overview'],
     backdropPath:json['backdrop_path'],
     title: json['title'],
     genreIds:List<int>.from(json ['genre_ids']),
     voteAverage: json['vote_average'],
     releaseDate:json['release_date']);
}
