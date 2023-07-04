import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/core/servies/servies_locator.dart';
import 'package:untitled3/core/utiles/app_constance.dart';
import 'package:untitled3/core/utiles/app_string.dart';
import 'package:untitled3/movies/domain/entities/genres.dart';
import 'package:untitled3/movies/domain/entities/movie_datails.dart';
import 'package:untitled3/movies/pressentaion/controller/movie_datailes_event.dart';
import 'package:untitled3/movies/pressentaion/controller/movie_datailes_state.dart';
import 'package:untitled3/movies/pressentaion/controller/movie_datails_block.dart';
import 'package:untitled3/movies/pressentaion/widgit/custom_position_color_green.dart';

class MovieDatailsScreen extends StatelessWidget {
  MovieDatailsScreen({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
        create: (BuildContext context) =>
            serLoc<MovieDataliesBloc>()..add(GetmovieDatailesEvent(id)),
        child: BlocBuilder<MovieDataliesBloc, MovieDatalsStste>(
            builder: (BuildContext, st) {
          return Scaffold(
          backgroundColor: Colors.black,
            body: Stack(
             children: [
               CustomPositionColorGreen(),
               CustomScrollView(
                 key: const Key('movieDetailScrollView'),
                 slivers: [
                   SliverAppBar(
                     pinned: true,
                     expandedHeight: 250.0,
                     flexibleSpace: FlexibleSpaceBar(
                       background: FadeIn(
                         duration: const Duration(milliseconds: 500),
                         child: ShaderMask(
                           shaderCallback: (rect) {
                             return const LinearGradient(
                               begin: Alignment.topCenter,
                               end: Alignment.bottomCenter,
                               colors: [
                                 Colors.transparent,
                                 Colors.black,
                                 Colors.black,
                                 Colors.transparent,
                               ],
                               stops: [0.0, 0.5, 1.0, 1.0],
                             ).createShader(
                               Rect.fromLTRB(0.0, 0.0, rect.width, rect.height),
                             );
                           },
                           blendMode: BlendMode.dstIn,
                           child: CachedNetworkImage(
                             width: MediaQuery.of(context).size.width,
                             placeholder: (context, url) => Container(
                               color: Colors.transparent,
                               height: 100,
                               width: 100,
                               // child: SpinKitFadingCircle(
                               //   color: ColorConstants.colorPrimary,
                               //   size: 30,
                               // ),
                             ),
                             errorWidget: (context, url, error) =>
                                 SizedBox(
                                   child: Center(
                                       child: CircularProgressIndicator(
                                         color: Colors.green,
                                       )
                                   ),
                                   height: 50.0,
                                   width: 50.0,
                                 ),
                             imageUrl: AppConstance.imageUrl(
                                 st.movieDatails?.backdropPath ?? ''),
                             fit: BoxFit.cover,
                           ),
                         ),
                       ),
                     ),
                   ),
                   SliverToBoxAdapter(
                     child: FadeInUp(
                       from: 20,
                       duration: const Duration(milliseconds: 500),
                       child: Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(st.movieDatails?.title ?? '',
                                 style: GoogleFonts.poppins(
                                   fontSize: 23,
                                   fontWeight: FontWeight.w700,
                                   letterSpacing: 1.2,
                                   color: Colors.white
                                 )),
                             const SizedBox(height: 8.0),
                             Row(
                               children: [
                                 Container(
                                   padding: const EdgeInsets.symmetric(
                                     vertical: 2.0,
                                     horizontal: 8.0,
                                   ),
                                   decoration: BoxDecoration(
                                     color: Colors.grey[800],
                                     borderRadius: BorderRadius.circular(4.0),
                                   ),
                                   child: Text(
                                     st.movieDatails?.releaseDate.split('-')[0] ??
                                         "",
                                     style: const TextStyle(
                                       fontSize: 16.0,
                                       fontWeight: FontWeight.w500,
                                         color: Colors.white
                                     ),
                                   ),
                                 ),
                                 const SizedBox(width: 16.0),
                                 Row(
                                   children: [
                                     const Icon(
                                       Icons.star,
                                       color: Colors.amber,
                                       size: 20.0,
                                     ),
                                     const SizedBox(width: 4.0),
                                     Text(
                                       (st.movieDatails?.voteAverage ?? 0 / 2)
                                           .toStringAsFixed(1),
                                       style: const TextStyle(
                                         fontSize: 16.0,
                                         fontWeight: FontWeight.w500,
                                         letterSpacing: 1.2,
                                           color: Colors.white
                                       ),
                                     ),
                                     const SizedBox(width: 4.0),
                                     Text(
                                       '(${st.movieDatails?.voteAverage})',
                                       style: const TextStyle(
                                         fontSize: 1.0,
                                         fontWeight: FontWeight.w500,
                                         letterSpacing: 1.2,
                                           color: Colors.white
                                       ),
                                     ),
                                   ],
                                 ),
                                 const SizedBox(width: 16.0),
                                 Text(
                                   _showDuration(st.movieDatails?.runtime ?? 0),
                                   style: const TextStyle(
                                     color: Colors.white70,
                                     fontSize: 16.0,
                                     fontWeight: FontWeight.w500,
                                     letterSpacing: 1.2,

                                   ),
                                 ),
                               ],
                             ),
                             const SizedBox(height: 20.0),
                             Text(
                               st.movieDatails?.overview ?? '',
                               style: const TextStyle(
                                 fontSize: 14.0,
                                 fontWeight: FontWeight.w400,
                                 letterSpacing: 1.2,
                                   color: Colors.white
                               ),
                             ),
                             const SizedBox(height: 8.0),
                             Text(
                               'Genres: ${_showGenres(st.movieDatails?.genres ?? [])}',
                               style: const TextStyle(
                                 color: Colors.white70,
                                 fontSize: 12.0,
                                 fontWeight: FontWeight.w500,
                                 letterSpacing: 1.2,

                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                   SliverPadding(
                     padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
                     sliver: SliverToBoxAdapter(
                       child: FadeInUp(
                         from: 20,
                         duration: const Duration(milliseconds: 500),
                         child: Text(
                           AppString.moreLike.toUpperCase(),
                           style: const TextStyle(
                             fontSize: 16.0,
                             fontWeight: FontWeight.w500,
                             letterSpacing: 1.2,
                               color: Colors.white
                           ),
                         ),
                       ),
                     ),
                   ),
                   // Tab(text: 'More like this'.toUpperCase()),
                   // SliverPadding(
                   //   padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 24.0),
                   //   sliver: _showRecommendations(),
                   // ),
                 ],
               ),
             ],
            ),
          );
        }));
  }

  String _showGenres(List<Genress> genres) {
    String result = '';
    for (var genre in genres) {
      result += '${genre.name}, ';
    }

    if (result.isEmpty) {
      return result;
    }

    return result.substring(0, result.length - 2);
  }

  String _showDuration(int runtime) {
    final int hours = runtime ~/ 60;
    final int minutes = runtime % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }
}
