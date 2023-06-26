import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/core/utiles/enum.dart';
import 'package:untitled3/movies/domain/usercases/get_movie_datiles.dart';
import 'package:untitled3/movies/pressentaion/controller/movie_datailes_event.dart';
import 'package:untitled3/movies/pressentaion/controller/movie_datailes_state.dart';

class MovieDataliesBloc extends Bloc<MovieDatailesEvent,MovieDatalsStste>{
     GetMovieDataliesUseCase getMovieDataliesUseCase;

     MovieDataliesBloc(this.getMovieDataliesUseCase):super(MovieDatalsStste()){

          on<GetmovieDatailesEvent>((event,Emitter<MovieDatalsStste> emit) async{
               final re=  await getMovieDataliesUseCase.exuteDatalies(event.id);

               re.fold((l) => emit(

                   state.CopyWith2(
                       requastStat: RequastStat.error,
                        datailsmassage: 'error',
                   )),
                       (r) => emit(state.CopyWith2(
                      movieDatails:r ,
                       requastStat: RequastStat.loaded
                   )));
          });
     }

}