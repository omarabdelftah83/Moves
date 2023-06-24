import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable{
  const MoviesEvent();
  @override
  List<Object> get props=>[];
}
class GetNowplayingMoviesEvent extends MoviesEvent{}
class GetPopluerMoviesEvent extends MoviesEvent{}
class GetTopRatedMoviesEvent extends MoviesEvent{}
