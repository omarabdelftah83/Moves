import 'package:equatable/equatable.dart';
import 'package:untitled3/core/utiles/enum.dart';
import 'package:untitled3/movies/domain/entities/movie_datails.dart';

class MovieDatalsStste extends Equatable{

  final MovieDatails?  movieDatails;
  final RequastStat requastStat;
  final String datailsmassage;

  MovieDatalsStste({
      this.movieDatails,
      this.requastStat =RequastStat.loading,
      this.datailsmassage=''  ,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [movieDatails,requastStat,datailsmassage];

  MovieDatalsStste CopyWith2({
    final MovieDatails?  movieDatails,
    final RequastStat? requastStat,
    final String? datailsmassage,


  }){
    return MovieDatalsStste(
      movieDatails: movieDatails??this.movieDatails,
      requastStat: requastStat??this.requastStat,
     datailsmassage: datailsmassage??this.datailsmassage,
    );
}
}