

import 'package:equatable/equatable.dart';
import 'package:untitled3/core/utiles/enum.dart';
import 'package:untitled3/movies/domain/entities/movie.dart';

class MoviesState extends Equatable{

     //State//

  final List<Movie> nowPlayingMovies;
  final RequastStat nowPlayingState;
  final String masege;

  final List<Movie> popluerMovies;
  final RequastStat populerState;
  final String populermasege;

  final List<Movie> topRatedMovies;
  final RequastStat topRatedState;
  final String topRatedrmasege;

 //constructor//
  MoviesState({
    this.nowPlayingMovies=const[],
    this.nowPlayingState=RequastStat.loading,
    this.masege='',

    this.popluerMovies=const[],
    this.populerState=RequastStat.loading,
    this.populermasege='',

     this.topRatedMovies=const[],
     this.topRatedState=RequastStat.loading,
    this.topRatedrmasege='',
  });
  //copywith//

  MoviesState Copywith({

     List<Movie>? nowPlayingMovies,
     RequastStat? nowPlayingState,
     String? masege,

      List<Movie>? popluerMovies,
      RequastStat? populerState,
      String? populermasege,

      List<Movie>? topRatedMovies,
      RequastStat? topRatedState,
      String? topRatedrmasege,
}){
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies??this.nowPlayingMovies,
      nowPlayingState: nowPlayingState??this.nowPlayingState,
      masege: masege??this.masege,

      popluerMovies: popluerMovies??this. popluerMovies,
      populerState: populerState??this.populerState,
      populermasege: populermasege??this.populermasege,

        topRatedMovies: topRatedMovies??this.topRatedMovies,
        topRatedState: topRatedState??this.topRatedState,
        topRatedrmasege: topRatedrmasege??this.topRatedrmasege,


    );
  }
  @override
  // TODO: implement props
  //equtable//
  List<Object?> get props => [
  nowPlayingMovies,
  nowPlayingState,
  masege,

  popluerMovies,
  populerState,
  populermasege,

  topRatedMovies,
  topRatedState,
  topRatedrmasege,
];


}