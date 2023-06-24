import 'package:dartz/dartz.dart';
import 'package:untitled3/core/error/faliuare.dart';
import 'package:untitled3/movies/domain/entities/movie.dart';
import 'package:untitled3/movies/domain/repository/base_movies_repository.dart';

class GetpopularMoviesUsercase{
final  BaseMoviesRepository baseMoviesRepository;
  GetpopularMoviesUsercase(this.baseMoviesRepository);

Future<Either< Faluiare,List<Movie>>> exeute()async  {
    return await baseMoviesRepository.getPopularMovies();
}

}