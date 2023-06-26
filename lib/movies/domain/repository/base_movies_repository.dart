import 'package:dartz/dartz.dart';
import 'package:untitled3/core/error/faliuare.dart';
import 'package:untitled3/movies/domain/entities/movie_recomandaion.dart';
import 'package:untitled3/movies/domain/entities/movie.dart';
import 'package:untitled3/movies/domain/entities/movie_datails.dart';



abstract class BaseMoviesRepository{

  Future<Either< Faluiare,List<Movie>>> getNowPlaying();
  Future<Either< Faluiare,List<Movie>>> getPopularMovies();
  Future<Either< Faluiare,List<Movie>>> getTopRatedMovies();
  Future<Either<Faluiare,MovieDatails>>getMovieDatalies(int id);
  //Future<Either< Faluiare,List<MovieRecomandation>>> getMovieRecomandation();

}