import 'package:dartz/dartz.dart';
import 'package:untitled3/core/error/exception.dart';
import 'package:untitled3/core/error/faliuare.dart';
import 'package:untitled3/movies/data/datasourse/movie_remote_datasourse.dart';
import 'package:untitled3/movies/domain/entities/movie_recomandaion.dart';
import 'package:untitled3/movies/domain/entities/movie.dart';
import 'package:untitled3/movies/domain/entities/movie_datails.dart';
import 'package:untitled3/movies/domain/repository/base_movies_repository.dart';
//ليه ورث من base الساسي
  class MovieRepository implements BaseMoviesRepository{
  final BaseMovieRemoteDatasourse baseMovieRemoteDatasourse;
  MovieRepository(this.baseMovieRemoteDatasourse);

  @override
  Future<Either< Faluiare,List<Movie>>> getNowPlaying()async {
    final result= await  baseMovieRemoteDatasourse.getNowPlayingMovie();
    try{
      return right(result);
       }
    on ServerExcepion catch (faluaire){
      left(ServerFaluiare(faluaire.errorMasage.stutesMassage));

      throw UnimplementedError();
    }

  }

  @override
  Future<Either<Faluiare, List<Movie>>> getPopularMovies()async {
    final result = await baseMovieRemoteDatasourse.getpopularMovie();
    try {
      return right(result);
    }
    on ServerExcepion catch (faluaire) {
      left(ServerFaluiare(faluaire.errorMasage.stutesMassage));
      throw UnimplementedError();
    }}

    @override
    Future<Either<Faluiare, List<Movie>>> getTopRatedMovies() async{
      final result=await  baseMovieRemoteDatasourse.getTopRatedMovie();
      try{return right(result);}
      on ServerExcepion catch (faluaire){
        left(ServerFaluiare(faluaire.errorMasage.stutesMassage));
        throw UnimplementedError();

      }
  }}

  // @override
  // Future<Either<Faluiare, MovieDatails>> getMovieDatalies(int id) async{
  //   final result=await  baseMovieRemoteDatasourse.getDaliesMovie( id);
  //   try{return right(result);}
  //   on ServerExcepion catch (faluaire){
  //     left(ServerFaluiare(faluaire.errorMasage.stutesMassage));
  //   throw UnimplementedError();
  // }}}

  // @override
  // Future<Either<Faluiare, List<MovieRecomandation>>> getMovieRecomandation() async{
  //   final result=await  baseMovieRemoteDatasourse.getRecomandationMovie( );
  //   try{return right(result);}
  //   on ServerExcepion catch (faluaire){
  //     left(ServerFaluiare(faluaire.errorMasage.stutesMassage));
  //   throw UnimplementedError();
  // }}}
