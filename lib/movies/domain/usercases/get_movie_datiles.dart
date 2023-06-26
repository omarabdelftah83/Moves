import 'package:dartz/dartz.dart';
import 'package:untitled3/core/error/faliuare.dart';
import 'package:untitled3/movies/domain/entities/movie.dart';
import 'package:untitled3/movies/domain/entities/movie_datails.dart';
import 'package:untitled3/movies/domain/repository/base_movies_repository.dart';

class GetMovieDataliesUseCase {
  BaseMoviesRepository baseMoviesRepository;
  GetMovieDataliesUseCase(this.baseMoviesRepository);
  Future<Either<Faluiare, MovieDatails>> exuteDatalies(int id) async{
    return await baseMoviesRepository.getMovieDatalies(id);

  }


}