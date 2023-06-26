import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/core/servies/servies_locator.dart';
import 'package:untitled3/core/servies/servies_locator.dart';
import 'package:untitled3/core/utiles/app_constance.dart';
import 'package:untitled3/core/utiles/dummy.dart';
import 'package:untitled3/movies/domain/usercases/get%20_nowplaying_movies_usercase.dart';
import 'package:untitled3/movies/pressentaion/controller/movies_block.dart';
import 'package:untitled3/movies/pressentaion/controller/movies_state.dart';
import 'package:untitled3/movies/pressentaion/screen/movie_datails_screen.dart';
import 'package:untitled3/movies/pressentaion/screen/movie_detail_screen.dart';

import '../../domain/entities/movie_datails.dart';

class NowPlayingComponent extends StatelessWidget {
  const NowPlayingComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBlock, MoviesState>(
        buildWhen: (previous, current) =>
            previous.nowPlayingState != current.nowPlayingState,
        builder: (context, M) {
          return FadeIn(
            duration: const Duration(milliseconds: 100),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {},
              ),
              items: M.nowPlayingMovies.map(
                (item) {
                  return GestureDetector(
                    //    key: const Key('openMovieMinimalDetail'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MovieDatailsScreen(
                                    id: item.id,
                                  )));

                      /// required int id,
                      ///  required String backdropPath,
                      ///  required String overview,
                      ///  required String releaseDate,
                      ///  required String title,
                      ///  required int runtime,
                      ///  required double voteAverage,
                      ///  required List  genres,l
                    },
                    child: Stack(
                      children: [
                        ShaderMask(
                          shaderCallback: (rect) {
                            return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                // fromLTRB
                                Colors.transparent,
                                Colors.white,
                                Colors.white,
                                Colors.black,
                              ],
                              stops: [0, 0.3, 0.5, 1],
                            ).createShader(
                              Rect.fromLTRB(0, 0, rect.width, rect.height),
                            );
                          },
                          blendMode: BlendMode.dstIn,
                          child: CachedNetworkImage(
                            height: 560.0,
                            imageUrl: AppConstance.imageUrl(item.backdropPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.circle,
                                      color: Colors.redAccent,
                                      size: 16.0,
                                    ),
                                    const SizedBox(width: 4.0),
                                    Text(
                                      'Now Playing'.toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Text(
                                  item.title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
          );
        });
  }
}
//);
// return FadeIn(
//   duration: const Duration(milliseconds: 100),
//   child: CarouselSlider(
//     options: CarouselOptions(
//       height: 250.0,
//       viewportFraction: 1.0,
//       onPageChanged: (index, reason) {},
//     ),
//     items: moviesList.map(
//           (item) {
//
//
//         return GestureDetector(
//           key: const Key('openMovieMinimalDetail'),
//           onTap: () {
//             /// TODO : NAVIGATE TO MOVIE DETAILS
//           },
//           child: Stack(
//             children: [
//               ShaderMask(
//                 shaderCallback: (rect) {
//                   return const LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       // fromLTRB
//                       Colors.transparent,
//                       Colors.white,
//                       Colors.white,
//                       Colors.black,
//                     ],
//                     stops: [0, 0.3, 0.5, 1],
//                   ).createShader(
//                     Rect.fromLTRB(0, 0, rect.width, rect.height),
//                   );
//                 },
//                 blendMode: BlendMode.dstIn,
//                 child: CachedNetworkImage(
//                   height: 560.0,
//                   imageUrl: AppConstance.imageUrl(item.backdropPath!),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.circle,
//                             color: Colors.redAccent,
//                             size: 16.0,
//                           ),
//                           const SizedBox(width: 4.0),
//                           Text(
//                             'Now Playing'.toUpperCase(),
//                             style: const TextStyle(
//                               fontSize: 16.0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 16.0),
//                       child: Text(
//                         item.title!,
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(
//                           fontSize: 24,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     ).toList(),
//   ),
// );
