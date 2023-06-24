import 'package:dartz/dartz.dart';
import 'package:untitled3/core/error/faliuare.dart';
import 'package:untitled3/movies/domain/entities/movie.dart';
import 'package:untitled3/movies/domain/repository/base_movies_repository.dart';

class GetNowPlayingMoviesUsercase{
 final BaseMoviesRepository baseMoviesRepository;
 GetNowPlayingMoviesUsercase(this.baseMoviesRepository);
 Future<Either< Faluiare,List<Movie>>> exeute()async{
   return await baseMoviesRepository.getNowPlaying();

 }

}